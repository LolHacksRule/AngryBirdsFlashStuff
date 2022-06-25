package §?t§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §5!'§.§#![§;
   import §5!'§.§>Y§;
   import §5!'§.ProfilePicture;
   import §9R§.CachedFacebookFriends;
   import §9R§.CustomAvatarCache;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentRovio;
   import §?j§.FacebookUserProgress;
   import §@!`§.FriendListItemVO;
   import §@!`§.UserLevelScoreVO;
   import §]!6§.§6#§;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
       
      
      private var §5!M§:§6"§;
      
      private var §%q§:CachedFacebookFriends;
      
      private var §;!=§:§!T§;
      
      private var §!!Y§:§!T§;
      
      private var §>6§:Number;
      
      private var §0!!§:Number;
      
      private var §%p§:ProfilePicture;
      
      private var §`;§:§#![§;
      
      private var §]Z§:Boolean = false;
      
      private var §7w§:Boolean;
      
      private var §,<§:UserLevelScoreVO;
      
      private var §4h§:int;
      
      private var §`f§:UserLevelScoreVO;
      
      private var §^!P§:int = -1;
      
      private var §!S§:Array;
      
      private var §0!h§:String;
      
      private var §&Y§:UserLevelScoreVO;
      
      private var §+C§:UIContainerRovio;
      
      private var §-!S§:UIContainerRovio;
      
      private var §9!%§:UIComponentRovio;
      
      private var §8-§:§6#§;
      
      private var §!D§:§6#§;
      
      private var §5+§:§6#§;
      
      private var §1!Y§:§6#§;
      
      private var §1!_§:§6#§;
      
      private var §0!$§:§6#§;
      
      private var §3R§:UITextFieldRovio;
      
      private var §^r§:UITextFieldRovio;
      
      private var §8!9§:UITextFieldRovio;
      
      private var §3W§:UITextFieldRovio;
      
      private var §3E§:UITextFieldRovio;
      
      private var §>!<§:UITextFieldRovio;
      
      public function VersusComponent(uiView:§6"§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§!S§ = [];
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           while(true)
                           {
                              this.§5!M§ = uiView;
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§"'§();
                                    while(true)
                                    {
                                       addr118:
                                       while(!_loc3_)
                                       {
                                          this.§>6§ = this.§-!S§.x;
                                          continue loop7;
                                       }
                                       continue loop3;
                                       addr33:
                                       if(!(_loc3_ && uiView))
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr75);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §"'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               this.§-!S§ = this.§5!M§.getItemByName("Container_VsHero") as UIContainerRovio;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§9!%§ = this.§5!M§.getItemByName("Container_VsEnemy") as UIContainerRovio;
                     while(true)
                     {
                        addr346:
                        addr308:
                        while(true)
                        {
                           this.§+C§ = this.§5!M§.getItemByName("Container_Vs") as UIContainerRovio;
                           continue loop0;
                        }
                        loop6:
                        while(_loc1_ || this)
                        {
                           this.§8-§ = this.§5!M§.getItemByName("MovieClip_VsAnimation") as §6#§;
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(_loc1_)
                              {
                                 this.§!D§ = this.§5!M§.getItemByName("MovieClip_Boom") as §6#§;
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       this.§5+§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicHero") as §6#§;
                                       addr275:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             this.§1!Y§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicEnemy") as §6#§;
                                             loop13:
                                             while(true)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   this.§1!_§ = this.§5!M§.getItemByName("MovieClip_CrownHero") as §6#§;
                                                   addr247:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr153:
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   this.§8!9§ = this.§5!M§.getItemByName("TextField_NameHero") as UITextFieldRovio;
                                                   loop23:
                                                   while(_loc1_)
                                                   {
                                                      while(!_loc2_)
                                                      {
                                                         this.§3W§ = this.§5!M§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue loop9;
                                                            }
                                                            addr151:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§3R§ = this.§5!M§.getItemByName("TextField_VsScore") as UITextFieldRovio;
                                                                     addr203:
                                                                     while(true)
                                                                     {
                                                                        addr186:
                                                                        while(_loc1_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(_loc1_)
                                                                           {
                                                                              this.§^r§ = this.§5!M§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
                                                                              break loop23;
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  return;
                                                                  addr206:
                                                                  addr45:
                                                               }
                                                               §§goto(addr153);
                                                               continue loop25;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop9;
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   while(_loc1_)
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr203);
                                                }
                                             }
                                          }
                                       }
                                       addr70:
                                       if(!(_loc1_ || this))
                                       {
                                          continue;
                                       }
                                       this.§>!<§ = this.§5!M§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          loop27:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr70);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§3E§ = this.§5!M§.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
                                                                  continue loop27;
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                         §§goto(addr229);
                                                         addr97:
                                                      }
                                                      addr36:
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr45);
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr133);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr275);
                                    }
                                 }
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr206);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || playerUsername)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§;!=§);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§!!Y§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       addr130:
                                       var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip;
                                       if(_loc4_ && playerUsername)
                                       {
                                       }
                                       §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop());
                                       }
                                       var playerUsername:* = §§pop();
                                       if(!_loc4_)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§4!5§(playerUsername,this.§8!9§,playerNameMask));
                                             loop17:
                                             while(true)
                                             {
                                                §§pop();
                                                loop18:
                                                while(true)
                                                {
                                                   loop19:
                                                   while(this.§&Y§)
                                                   {
                                                      loop20:
                                                      while(_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            while(!_loc4_)
                                                            {
                                                               continue loop17;
                                                               while(_loc3_ || this)
                                                               {
                                                                  if(!(_loc4_ && playerUsername))
                                                                  {
                                                                     if(_loc4_ && playerUsername)
                                                                     {
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                               }
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop18;
                                                   }
                                                   §§goto(addr159);
                                                }
                                             }
                                          }
                                       }
                                       addr159:
                                       return;
                                    }
                                    while(true)
                                    {
                                       addr75:
                                       addr82:
                                       while(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    addr74:
                                 }
                                 continue loop4;
                              }
                           }
                           while(!_loc4_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                        addr121:
                        §§push(this.§;!=§);
                        if(_loc4_ && playerNameMask)
                        {
                           continue;
                        }
                        §§pop().play();
                        §§goto(addr95);
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               §§push(this.§;!=§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §§push(this.§;!=§);
                              loop5:
                              while(true)
                              {
                                 §§pop().pause();
                                 addr163:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr108);
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§0!h§ = levelId;
                     while(true)
                     {
                        continue loop2;
                        loop29:
                        while(!(_loc4_ && levelScores))
                        {
                           loop30:
                           for(; !_loc4_; if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           },if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr192);
                              }
                              §§goto(addr338);
                           }
                           else
                           {
                              §§goto(addr288);
                           })
                           {
                              addr271:
                              §§push(this.§8-§);
                              if(_loc3_ || levelId)
                              {
                                 addr246:
                                 if(!(_loc4_ && levelScores))
                                 {
                                    §§push(true);
                                    if(_loc3_ || this)
                                    {
                                       §§pop().§ O§ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   addr221:
                                                   addr330:
                                                   loop33:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      addr228:
                                                      if(_loc3_ || levelId)
                                                      {
                                                         this.§4h§ = -1;
                                                         loop34:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop30;
                                                            }
                                                            continue loop33;
                                                            loop36:
                                                            while(true)
                                                            {
                                                               if(_loc4_ && levelScores)
                                                               {
                                                                  continue loop34;
                                                               }
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  addr311:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr148:
                                                                           §§push(this.§9!%§);
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§pop().y = this.§0!!§;
                                                                              continue;
                                                                           }
                                                                           addr388:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(true);
                                                                              break loop30;
                                                                              §§goto(addr148);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr174:
                                                                     while(true)
                                                                     {
                                                                        this.§-!S§.x = this.§>6§;
                                                                        continue loop36;
                                                                     }
                                                                  }
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§+C§.setVisibility(false);
                                                                     §§goto(addr311);
                                                                  }
                                                                  addr311:
                                                                  addr384:
                                                               }
                                                               loop12:
                                                               while(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§%q§ = levelScores;
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§]Z§ = false;
                                                                           addr361:
                                                                           addr192:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§`f§ = null;
                                                                                 addr353:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr292:
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§8-§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§;!G§("Start");
                                                                                    break loop36;
                                                                                    §§goto(addr271);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!(_loc3_ || levelScores))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr199:
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr412:
                                                                           while(true)
                                                                           {
                                                                              this.§^J§();
                                                                              addr409:
                                                                              while(true)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr388);
                                                               }
                                                            }
                                                            continue loop29;
                                                         }
                                                         continue loop30;
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr311);
                                                      §§goto(addr221);
                                                   }
                                                }
                                                addr266:
                                             }
                                             else
                                             {
                                                §§goto(addr409);
                                             }
                                             §§goto(addr394);
                                          }
                                          break;
                                          if(_loc4_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             addr52:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                return;
                                             }
                                             addr417:
                                             while(!_loc4_)
                                             {
                                                §§goto(addr412);
                                                §§goto(addr52);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr341);
                                       }
                                       while(true)
                                       {
                                          this.§!S§ = [];
                                          §§goto(addr330);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          loop26:
                                          while(_loc3_)
                                          {
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                   break;
                                                }
                                                continue loop26;
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr361);
                                       }
                                       addr304:
                                    }
                                    §§goto(addr353);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr246);
                                    }
                                    addr303:
                                 }
                                 §§goto(addr304);
                              }
                              §§goto(addr275);
                           }
                           while(true)
                           {
                              §§goto(addr384);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || playerRank)
         {
         }
         var playerRank:* = 0;
         if(_loc7_ || username)
         {
            while(true)
            {
               loop2:
               for(; !(_loc6_ && this); if(!(_loc7_ || playerNameMask))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr56);
               },var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip,if(_loc6_)
               {
               },§§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName),if(!_loc6_)
               {
                  §§push(§§pop());
               },var username:* = §§pop(),if(!_loc6_)
               {
                  §§push(this.§4!5§(username,this.§8!9§,playerNameMask));
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  username = §§pop();
                  addr168:
                  addr166:
               },addr145:,this.§`f§ = null,if(!_loc6_)
               {
                  if(_loc7_)
                  {
                     if(_loc7_ || this)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(false)
                           {
                              §§goto(addr145);
                           }
                           §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§0!h§));
                           if(!(_loc6_ && playerRank))
                           {
                              §§push(int(§§pop()));
                           }
                           var currentHighScore:* = §§pop();
                           if(_loc7_ || this)
                           {
                              this.§,<§ = this.§%q§.§>!J§();
                              addr506:
                              addr497:
                              addr504:
                              if(this.§,<§)
                              {
                                 this.§7!e§(this.§,<§);
                                 addr494:
                                 addr493:
                                 if(_loc7_)
                                 {
                                    if(!(_loc6_ && username))
                                    {
                                       §§push(this.§,<§);
                                       if(!_loc6_)
                                       {
                                          §§push(int(§§pop().rank + 1));
                                          if(!_loc6_)
                                          {
                                             playerRank = §§pop();
                                             addr466:
                                             if(!_loc6_)
                                             {
                                                addr431:
                                                this.§9!%§.setVisibility(true);
                                                addr430:
                                                addr443:
                                                if(!(_loc6_ && this))
                                                {
                                                   addr421:
                                                   this.§8-§.setVisibility(true);
                                                   addr291:
                                                   this.§3E§.setText(playerRank.toString());
                                                   addr420:
                                                   addr426:
                                                   addr423:
                                                   if(!(_loc6_ && playerRank))
                                                   {
                                                      addr286:
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(currentHighScore);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || playerNameMask)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        addr266:
                                                                        if(!(_loc6_ && playerRank))
                                                                        {
                                                                           addr274:
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!(_loc6_ && playerNameMask))
                                                                              {
                                                                                 addr221:
                                                                                 §§push(AngryBirdsFP11.sUserProgress);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    (§§pop() as FacebookUserProgress).§5Q§(LevelManager.§var§,playerRank);
                                                                                    addr236:
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       if(_loc7_ || username)
                                                                                       {
                                                                                          if(!(_loc6_ && username))
                                                                                          {
                                                                                             if(!(_loc6_ && playerNameMask))
                                                                                             {
                                                                                                if(!(_loc6_ && username))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr221);
                                                                                                         }
                                                                                                         addr510:
                                                                                                         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§0!h§));
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr515:
                                                                                                            §§push(int(§§pop()));
                                                                                                         }
                                                                                                         var currentEagle:* = §§pop();
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr927:
                                                                                                            §§push(this.§1!_§);
                                                                                                            §§push(playerRank);
                                                                                                            §§push(3);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               if(_loc7_ || playerRank)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc6_ && username))
                                                                                                                        {
                                                                                                                           addr861:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(currentHighScore);
                                                                                                                                    if(_loc7_ || playerNameMask)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          addr878:
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          if(_loc7_ || this)
                                                                                                                                          {
                                                                                                                                             addr886:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(_loc6_ && username)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr923:
                                                                                                                                             §§pop().setVisibility(Boolean(§§pop()));
                                                                                                                                             addr831:
                                                                                                                                             addr922:
                                                                                                                                             addr925:
                                                                                                                                             §§push(Boolean(playerRank > 0));
                                                                                                                                             if(Boolean(playerRank > 0))
                                                                                                                                             {
                                                                                                                                                addr825:
                                                                                                                                                §§pop();
                                                                                                                                                addr826:
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr795:
                                                                                                                                                   §§push(playerRank <= 3);
                                                                                                                                                   if(!(_loc6_ && playerNameMask))
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(_loc7_ || playerRank)
                                                                                                                                                   {
                                                                                                                                                      addr805:
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr808:
                                                                                                                                                            if(!(_loc6_ && username))
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr816:
                                                                                                                                                               §§push(currentHighScore);
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!(_loc6_ && playerNameMask))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(!(_loc6_ && username))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc6_ && playerNameMask))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr773:
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    if(!(_loc6_ && username))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr781:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr782:
                                                                                                                                                                                          §§push(currentEagle);
                                                                                                                                                                                          if(_loc7_ || playerRank)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && playerRank))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(_loc7_ || playerRank)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ || username)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                         if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc7_ || username)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr723:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr726:
                                                                                                                                                                                                                     addr725:
                                                                                                                                                                                                                     §§push(this.§1!_§);
                                                                                                                                                                                                                     if(_loc7_ || playerNameMask)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || username)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§;!G§(["Gold","Silver","Bronze"][playerRank - 1]);
                                                                                                                                                                                                                           addr580:
                                                                                                                                                                                                                           this.§+C§.setVisibility(true);
                                                                                                                                                                                                                           addr664:
                                                                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc6_ && username))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc6_ && username))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§]Z§ = true;
                                                                                                                                                                                                                                       addr556:
                                                                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc7_ || username)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_ && playerNameMask)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr816);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr782);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr629:
                                                                                                                                                                                                                                                if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr589:
                                                                                                                                                                                                                                                   if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc6_ && username))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr580);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr831);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr826);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr580);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr556);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr725);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr927);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr589);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr586:
                                                                                                                                                                                                                           §§goto(addr586);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr918:
                                                                                                                                                                                                                     §§push(currentEagle > 0);
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr922);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr923);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§1!_§);
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                     if(_loc7_ || username)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().§?i§(§§pop());
                                                                                                                                                                                                                           §§goto(addr629);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr918);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr923);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr795);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr781);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr795);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr816);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr923);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr795);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr723);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr805);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr923);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr805);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr773);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr808);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr781);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr923);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr825);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr723);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr923);
                                                                                                                                                }
                                                                                                                                                §§goto(addr925);
                                                                                                                                             }
                                                                                                                                             §§goto(addr805);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr908:
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                {
                                                                                                                                                   addr916:
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr918);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr923);
                                                                                                                                          }
                                                                                                                                          §§goto(addr908);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr918);
                                                                                                                              }
                                                                                                                              §§goto(addr916);
                                                                                                                           }
                                                                                                                           §§goto(addr923);
                                                                                                                        }
                                                                                                                        §§goto(addr908);
                                                                                                                     }
                                                                                                                     §§goto(addr861);
                                                                                                                  }
                                                                                                                  §§goto(addr923);
                                                                                                               }
                                                                                                               §§goto(addr886);
                                                                                                            }
                                                                                                            §§goto(addr878);
                                                                                                         }
                                                                                                         §§goto(addr726);
                                                                                                      }
                                                                                                      §§goto(addr494);
                                                                                                   }
                                                                                                   §§goto(addr286);
                                                                                                }
                                                                                                §§goto(addr266);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                       addr325:
                                                                                       if(_loc7_ || playerRank)
                                                                                       {
                                                                                          addr308:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc7_ || playerRank)
                                                                                             {
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             addr403:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr375:
                                                                                                if(!(_loc6_ && playerNameMask))
                                                                                                {
                                                                                                   §§push(this.§8-§);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(!(_loc6_ && username))
                                                                                                      {
                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                         addr335:
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(_loc7_ || playerNameMask)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  this.§-!S§.x = this.§9!%§.x;
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               §§push(this.§9!%§);
                                                                                                               if(_loc7_ || playerRank)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  if(_loc7_ || playerNameMask)
                                                                                                                  {
                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                                  §§goto(addr431);
                                                                                                               }
                                                                                                               §§goto(addr430);
                                                                                                               addr408:
                                                                                                               addr416:
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         addr372:
                                                                                                         §§goto(addr372);
                                                                                                      }
                                                                                                      §§goto(addr421);
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                   addr382:
                                                                                                }
                                                                                                §§goto(addr426);
                                                                                             }
                                                                                             §§goto(addr431);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr510);
                                                                              }
                                                                              §§goto(addr506);
                                                                           }
                                                                           §§goto(addr493);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                     §§goto(addr510);
                                                                  }
                                                                  addr414:
                                                                  §§push(int(§§pop()));
                                                               }
                                                               playerRank = §§pop();
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr515);
                                                         }
                                                         §§goto(addr443);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr497);
                                                }
                                                §§goto(addr466);
                                             }
                                             §§goto(addr494);
                                          }
                                          §§goto(addr515);
                                       }
                                       §§goto(addr506);
                                    }
                                    §§goto(addr504);
                                 }
                                 addr487:
                                 §§goto(addr487);
                              }
                              §§goto(addr414);
                              §§push(1);
                           }
                           §§goto(addr382);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr145);
               },addr154:,§§goto(addr154))
               {
                  while(true)
                  {
                     addr75:
                     addr98:
                     while(_loc7_ || playerRank)
                     {
                        loop5:
                        while(true)
                        {
                           addr56:
                           while(true)
                           {
                              this.§]a§();
                              continue loop5;
                           }
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        continue loop2;
                        §§goto(addr75);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               while(true)
               {
                  §§push(Boolean(this.§%q§.§5!W§));
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_ || deltaTime)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr240:
                              while(true)
                              {
                                 §§push(§]!B§.§>F§.objects.mSardineCanAdded);
                                 addr193:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr239:
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               this.initialize();
               §§goto(addr97);
            }
         }
         §§goto(addr185);
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var nextToBeatIndex:int = 0;
         if(!_loc5_)
         {
            while(true)
            {
            }
            addr540:
         }
         loop1:
         while(true)
         {
            loop2:
            do
            {
               if(this.§4h§ != scoreVisible)
               {
                  loop3:
                  while(true)
                  {
                     this.§4h§ = scoreVisible;
                     loop4:
                     while(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           this.§3R§.setText(this.§,v§(this.§4h§));
                           if(_loc5_ && this)
                           {
                              continue loop3;
                           }
                           if(!_loc5_)
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 for(§§push(!this.§,<§); !§§pop(); )
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(this.§%q§.§5!W§));
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop10:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§]!B§.§>F§.objects.mSardineCanAdded);
                                                         while(_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc6_ || highscore)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc6_ || scoreVisible))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr435:
                                                                           addr465:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           if(!(_loc5_ && scoreVisible))
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr434:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc6_ || highscore))
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr435);
                                                                              }
                                                                           }
                                                                           if(!(_loc6_ || score))
                                                                           {
                                                                              break loop6;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_ || score)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        addr226:
                                                                        §§push(Boolean(this.§,<§));
                                                                        if(Boolean(this.§,<§))
                                                                        {
                                                                           addr233:
                                                                           §§pop();
                                                                           addr234:
                                                                           §§push(this.§4h§);
                                                                           if(!(_loc5_ && scoreVisible))
                                                                           {
                                                                              §§push(this.§,<§.levelScore);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr218:
                                                                                 §§push(Boolean(§§pop() > §§pop()));
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr220:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr173:
                                                                                       addr222:
                                                                                       if(this.§!S§.length <= 5)
                                                                                       {
                                                                                          addr179:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr182:
                                                                                             if(!(_loc5_ && score))
                                                                                             {
                                                                                                §§push(this.§!S§);
                                                                                                if(!(_loc5_ && scoreVisible))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr156:
                                                                                                      §§push(§§pop().length > 0);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr166:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr169:
                                                                                                                        §§pop();
                                                                                                                        addr170:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(!this.§`f§);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr111:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(!(_loc5_ && highscore))
                                                                                                                                    {
                                                                                                                                       §§goto(addr118);
                                                                                                                                    }
                                                                                                                                    §§goto(addr169);
                                                                                                                                 }
                                                                                                                                 §§goto(addr218);
                                                                                                                              }
                                                                                                                              §§goto(addr156);
                                                                                                                           }
                                                                                                                           §§goto(addr111);
                                                                                                                        }
                                                                                                                        §§goto(addr293);
                                                                                                                     }
                                                                                                                     addr118:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr120:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr123:
                                                                                                                           if(_loc6_ || score)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && highscore))
                                                                                                                              {
                                                                                                                                 this.§^_§();
                                                                                                                                 addr76:
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || score)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && score))
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || highscore)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && scoreVisible))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || highscore)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ && scoreVisible))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ || highscore))
                                                                                                                                                               {
                                                                                                                                                                  addr319:
                                                                                                                                                                  this.§!S§.unshift(this.§,<§);
                                                                                                                                                                  addr304:
                                                                                                                                                                  nextToBeatIndex = this.§%q§.data.indexOf(this.§,<§) - 1;
                                                                                                                                                                  addr323:
                                                                                                                                                                  addr315:
                                                                                                                                                                  if(!(_loc5_ && scoreVisible))
                                                                                                                                                                  {
                                                                                                                                                                     addr280:
                                                                                                                                                                     §§push(nextToBeatIndex);
                                                                                                                                                                     if(!(_loc5_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr288:
                                                                                                                                                                        if(§§pop() >= 0)
                                                                                                                                                                        {
                                                                                                                                                                           this.§,<§ = this.§%q§.data[nextToBeatIndex];
                                                                                                                                                                           addr268:
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc5_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr226);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr323);
                                                                                                                                                                           }
                                                                                                                                                                           addr289:
                                                                                                                                                                           §§goto(addr289);
                                                                                                                                                                           addr290:
                                                                                                                                                                        }
                                                                                                                                                                        this.§,<§ = null;
                                                                                                                                                                        addr247:
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr237:
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr226);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr315);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr323);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr304);
                                                                                                                                                                     addr293:
                                                                                                                                                                  }
                                                                                                                                                                  addr326:
                                                                                                                                                                  §§goto(addr326);
                                                                                                                                                                  addr331:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr26);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr290);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr247);
                                                                                                                                                      }
                                                                                                                                                      addr192:
                                                                                                                                                      §§goto(addr173);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr179);
                                                                                                                                                }
                                                                                                                                                §§goto(addr120);
                                                                                                                                             }
                                                                                                                                             §§goto(addr76);
                                                                                                                                          }
                                                                                                                                          §§goto(addr234);
                                                                                                                                       }
                                                                                                                                       addr196:
                                                                                                                                       §§push(this.§!S§);
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§pop().pop();
                                                                                                                                          §§goto(addr192);
                                                                                                                                          addr200:
                                                                                                                                       }
                                                                                                                                       §§goto(addr319);
                                                                                                                                       addr225:
                                                                                                                                    }
                                                                                                                                    §§goto(addr182);
                                                                                                                                 }
                                                                                                                                 §§goto(addr123);
                                                                                                                              }
                                                                                                                              §§goto(addr268);
                                                                                                                           }
                                                                                                                           §§goto(addr170);
                                                                                                                        }
                                                                                                                        §§goto(addr222);
                                                                                                                     }
                                                                                                                     addr26:
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr226);
                                                                                                            }
                                                                                                            §§goto(addr166);
                                                                                                         }
                                                                                                         §§goto(addr233);
                                                                                                      }
                                                                                                      §§goto(addr218);
                                                                                                   }
                                                                                                   §§goto(addr196);
                                                                                                }
                                                                                                §§goto(addr173);
                                                                                             }
                                                                                             §§goto(addr200);
                                                                                          }
                                                                                          §§goto(addr237);
                                                                                       }
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                                  addr419:
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr434);
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                §§goto(addr419);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr465);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr540);
                        }
                     }
                     continue loop1;
                  }
               }
            }
            while(!_loc6_);
            
            return;
         }
      }
      
      private function §7!e§(enemyUser:UserLevelScoreVO) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§0!$§);
                  loop2:
                  while(true)
                  {
                     §§pop().setVisibility(enemyUser.rank <= 3);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(enemyUser.rank > 0);
                           if(_loc3_ || enemyUser)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && enemyUser))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§pop();
                                       addr220:
                                       while(true)
                                       {
                                          §§push(enemyUser.rank <= 3);
                                          if(_loc3_ || this)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc3_ || _loc3_)
                                          {
                                             break;
                                          }
                                          continue loop13;
                                       }
                                    }
                                    addr219:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                       addr180:
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       this.§>!<§.setText(enemyUser.rank.toString());
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                this.§^r§.setText(this.§,v§(enemyUser.levelScore));
                                                addr94:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   return;
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                          addr157:
                                          while(true)
                                          {
                                             addr135:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           §§goto(addr219);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         var movieClip:§6#§ = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            if(_loc5_ && _loc3_)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         var _loc3_:int = 0;
         for each(movieClip in [this.§8-§,this.§!D§,this.§8-§])
         {
            if(!(_loc5_ && _loc3_))
            {
               loop4:
               while(true)
               {
                  while(true)
                  {
                     this.§!$§(movieClip,deltaTime,true);
                     continue loop4;
                     addr92:
                  }
               }
            }
            while(true)
            {
               if(!_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr92);
               }
               §§goto(addr109);
            }
         }
         if(_loc6_ || _loc3_)
         {
         }
      }
      
      private function §2!Q§(enemyUser:UserLevelScoreVO) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr32:
               while(true)
               {
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      private function §4!5§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || this)
         {
            while(true)
            {
            }
            addr194:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               addr186:
               while(true)
               {
                  §§push(username);
                  while(true)
                  {
                     if(§§pop().length <= 6)
                     {
                        nameTextField.mClip.mask = null;
                        continue loop1;
                     }
                     while(!_loc4_)
                     {
                        loop11:
                        while(true)
                        {
                           nameTextField.mClip.mask = maskClip;
                           addr150:
                           while(!(_loc5_ || maskClip))
                           {
                              continue loop11;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr194);
                     addr52:
                     §§push(username);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                  }
               }
            }
         }
      }
      
      private function §@o§(holder:§6#§, newMovieClip:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && holder)
         {
         }
         if(_loc4_)
         {
         }
         while(!(_loc3_ || this))
         {
         }
         loop1:
         while(true)
         {
            if(holder.mClip.numChildren <= 0)
            {
               if(_loc4_ && _loc3_)
               {
               }
               loop2:
               while(true)
               {
                  if(_loc3_)
                  {
                     holder.mClip.addChild(newMovieClip);
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     while(!(_loc3_ || _loc3_))
                     {
                        break loop2;
                     }
                     continue loop1;
                     addr92:
                  }
               }
               while(true)
               {
                  §§goto(addr92);
               }
               addr106:
            }
            holder.mClip.removeChildAt(0);
            §§goto(addr106);
         }
      }
      
      private function §6I§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  continue loop0;
               }
            }
            addr41:
         }
         while(true)
         {
            if(_loc3_)
            {
               continue;
            }
            if(!(_loc3_ && userID))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr37);
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var avatarString:* = §§pop();
         if(_loc4_ || userID)
         {
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var userID:* = §§pop();
         if(_loc3_ && _loc3_)
         {
         }
         loop3:
         while(true)
         {
            this.§^J§();
            while(true)
            {
               loop5:
               while(_loc4_ || userID)
               {
                  if(_loc3_)
                  {
                     continue loop3;
                  }
                  this.§`;§ = new §#![§(userID,"",false,§>Y§.NORMAL);
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     continue loop5;
                  }
               }
            }
         }
      }
      
      private function §1>§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
            }
            addr60:
         }
         loop1:
         while(true)
         {
            this.§6I§();
            while(_loc2_ || _loc3_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop1;
               }
               §§goto(addr60);
            }
         }
      }
      
      private function §=o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               §§push(this.§%p§);
               addr112:
               loop1:
               while(§§pop())
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
               §§goto(addr29);
            }
            addr117:
         }
         loop3:
         while(true)
         {
            §§push(this.§%p§);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().dispose();
               do
               {
                  if(_loc1_ && _loc2_)
                  {
                     continue loop3;
                  }
                  if(_loc2_)
                  {
                     loop5:
                     while(true)
                     {
                        this.§%p§ = null;
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              if(_loc1_ && this)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                        §§goto(addr114);
                     }
                  }
                  else
                  {
                     §§goto(addr117);
                  }
                  §§goto(addr114);
               }
               while(_loc1_);
               
               addr29:
               return;
            }
            §§goto(addr112);
         }
      }
      
      private function §^J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               loop1:
               for(§§push(this.§`;§); §§pop(); loop3:
               while(true)
               {
                  §§push(this.§`;§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().dispose();
                  while(true)
                  {
                     while(_loc1_ || this)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§`;§ = null;
                           loop6:
                           for(; _loc1_; while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           })
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr103);
                           }
                           continue;
                        }
                        continue loop3;
                     }
                  }
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function set §-F§(value:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || value)
         {
            while(true)
            {
               addr102:
               while(true)
               {
                  this.§7w§ = value;
                  addr56:
                  if(_loc3_ || value)
                  {
                     return;
                     addr73:
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            while(true)
            {
               §§push(this.§+C§);
               §§push(this.§7w§);
               if(_loc3_ || _loc3_)
               {
                  §§push(!§§pop());
               }
               §§pop().setVisibility(§§pop());
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr104);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr73);
      }
      
      private function §^_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            while(true)
            {
               this.§`f§ = this.§!S§.pop();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§ + 15},{"x":this.§>6§},0.5,TweenManager.§0D§);
                     loop3:
                     while(_loc1_)
                     {
                        while(_loc1_)
                        {
                           §§push(this.§!!Y§);
                           while(true)
                           {
                              §§pop().onComplete = this.§>!N§;
                              continue loop3;
                              §§goto(addr110);
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr110:
         while(true)
         {
            §§push(this.§!!Y§);
            if(!_loc2_)
            {
               §§pop().play();
               continue;
            }
            continue loop5;
         }
         addr55:
         while(!(_loc2_ && this))
         {
         }
      }
      
      private function §>!N§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         var heroCurrentRank:int = 0;
         if(_loc3_ || heroCurrentRank)
         {
            if(_loc3_ || _loc3_)
            {
               loop0:
               while(true)
               {
                  this.§!!Y§ = null;
                  while(true)
                  {
                     loop2:
                     for(; _loc3_ || this; while(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr87);
                     })
                     {
                        §§push(this.§!D§);
                        while(true)
                        {
                           §§pop().§;!G§("Start");
                           continue loop2;
                           addr61:
                           if(!(_loc3_ || heroCurrentRank))
                           {
                              continue;
                           }
                           §§push(true);
                           if(!_loc4_)
                           {
                              §§pop().setVisibility(§§pop());
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       addr38:
                                       if(!(_loc4_ && nextToBeat))
                                       {
                                          if(!(_loc3_ || heroCurrentRank))
                                          {
                                             continue loop2;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§!D§);
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr61);
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                                addr81:
                                                addr137:
                                                while(true)
                                                {
                                                   §§pop().§ O§ = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr56);
                                                   }
                                                }
                                                addr137:
                                             }
                                             addr56:
                                             addr80:
                                          }
                                          else
                                          {
                                             §§push(this.§!S§);
                                             if(_loc3_)
                                             {
                                                if(§§pop().length > 0)
                                                {
                                                   §§goto(addr137);
                                                }
                                                else
                                                {
                                                   §§push(this.§,<§);
                                                }
                                                addr150:
                                                var nextToBeat:UserLevelScoreVO = §§pop();
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§`f§.rank == 1);
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr729:
                                                                        while(true)
                                                                        {
                                                                           §§push(nextToBeat == null);
                                                                           addr713:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     addr728:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§},null,0.5);
                                                                           while(!(_loc4_ && nextToBeat))
                                                                           {
                                                                              loop21:
                                                                              while(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§!!Y§);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().onComplete = null;
                                                                                    addr569:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr652:
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          addr645:
                                                                                          §§push(this.§!!Y§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr647:
                                                                                             §§pop().play();
                                                                                             while(true)
                                                                                             {
                                                                                                addr641:
                                                                                                this.§1!_§.§;!G§("Gold");
                                                                                                break loop21;
                                                                                                §§goto(addr647);
                                                                                             }
                                                                                             addr623:
                                                                                             this.§3E§.setText("1");
                                                                                             this.§1!_§.setVisibility(true);
                                                                                             break;
                                                                                             addr626:
                                                                                             addr619:
                                                                                             addr649:
                                                                                             addr629:
                                                                                             addr638:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().onComplete = this.§default§;
                                                                                             §§goto(addr645);
                                                                                          }
                                                                                          §§goto(addr647);
                                                                                          addr659:
                                                                                          addr663:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr652);
                                                                                       }
                                                                                       §§goto(addr659);
                                                                                    }
                                                                                    addr155:
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr698);
                                                                              }
                                                                              §§goto(addr638);
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr503);
                                                                                 §§push(int(nextToBeat.rank + 1));
                                                                                 §§goto(addr170);
                                                                              }
                                                                           }
                                                                           §§goto(addr729);
                                                                        }
                                                                        §§goto(addr716);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr623);
                                             }
                                          }
                                          §§goto(addr150);
                                          §§push(§§pop()[this.§!S§.length - 1]);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr38);
                                          }
                                          addr87:
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr76);
                                 }
                                 §§goto(addr137);
                              }
                              addr73:
                           }
                           §§goto(addr81);
                        }
                     }
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr73);
      }
      
      private function §7!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               this.§;!=§ = null;
               while(true)
               {
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     this.§`f§ = null;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(this.§!S§.length > 0)
                        {
                           loop5:
                           while(!_loc1_)
                           {
                              do
                              {
                                 this.§^_§();
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                              while(!_loc2_);
                              
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §default§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            do
            {
               this.§!!Y§ = null;
               while(true)
               {
                  while(!_loc1_)
                  {
                     this.§`f§ = null;
                     while(!_loc2_)
                     {
                     }
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function §,v§(amt:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || result)
         {
         }
         var subString:String = null;
         if(_loc8_ || subStrings)
         {
            while(true)
            {
               while(_loc8_)
               {
                  loop2:
                  while(true)
                  {
                     addr48:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  if(!(_loc8_ || subStrings))
                  {
                     continue;
                  }
                  if(!(_loc7_ && this))
                  {
                     while(false)
                     {
                        §§goto(addr48);
                     }
                     var result:* = amt.toString();
                     if(!_loc8_)
                     {
                     }
                     var subStrings:Array = [];
                     if(_loc8_)
                     {
                        while(true)
                        {
                           §§push(result);
                           §§goto(addr234);
                        }
                     }
                     while(true)
                     {
                        §§push(result);
                        if(!(_loc7_ && result))
                        {
                           if(!_loc7_)
                           {
                              §§push(§§pop().slice(result.length % 3));
                              continue;
                           }
                           addr234:
                           while(§§pop().length % 3 > 0)
                           {
                              continue loop6;
                           }
                           addr165:
                        }
                        continue;
                        loop12:
                        while(true)
                        {
                           §§push(result);
                           if(!_loc7_)
                           {
                              if(§§pop().length <= 0)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    if(!(_loc7_ && result))
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          if(false)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                addr121:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr359:
                                                   addr151:
                                                   while(true)
                                                   {
                                                      §§push(result);
                                                      if(_loc8_)
                                                      {
                                                         §§push(3);
                                                         if(!(_loc7_ && amt))
                                                         {
                                                            §§push(§§pop().substr(§§pop()));
                                                            if(!_loc7_)
                                                            {
                                                               result = §§pop();
                                                               if(_loc7_ && amt)
                                                               {
                                                                  §§push(result);
                                                                  if(!(_loc8_ || amt))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr347:
                                                               }
                                                               continue loop15;
                                                               break loop12;
                                                            }
                                                            addr352:
                                                            §§push(0);
                                                         }
                                                         §§push(§§pop().substr(§§pop(),result.length - 1));
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   result = §§pop();
                                                   addr360:
                                                   if(!(_loc7_ && subStrings))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr347);
                                                      }
                                                      §§goto(addr360);
                                                      addr367:
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             var _loc5_:int = 0;
                                             if(!_loc7_)
                                             {
                                                var _loc6_:* = subStrings;
                                                if(!(_loc7_ && result))
                                                {
                                                   addr309:
                                                   if(§§hasnext(_loc6_,_loc5_))
                                                   {
                                                      addr307:
                                                      subString = §§nextvalue(_loc5_,_loc6_);
                                                      addr273:
                                                      addr308:
                                                      addr300:
                                                      §§push(result);
                                                      if(_loc8_)
                                                      {
                                                         if(!(_loc7_ && result))
                                                         {
                                                            addr289:
                                                            result = §§pop() + (subString + ",");
                                                            addr290:
                                                            if(_loc8_ || amt)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr273);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   addr312:
                                                   if(_loc8_ || subStrings)
                                                   {
                                                      addr369:
                                                      §§push(result);
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr359);
                                                      addr369:
                                                   }
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr369);
                                       }
                                       §§goto(addr121);
                                    }
                                 }
                                 §§goto(addr347);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    subStrings.push(result.substr(0,3));
                                    if(!_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr151);
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr367);
                           }
                           break;
                        }
                        return §§pop();
                     }
                     addr46:
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §!$§(movieClip:§6#§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var label:* = null;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(; _loc6_; while(_loc6_ || this)
                  {
                  })
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(§§push(movieClip.§ O§); §§pop() == true; )
                        {
                           continue loop3;
                           addr104:
                           §§push(hideWhenDone);
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              loop16:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    loop17:
                                    while(!_loc5_)
                                    {
                                       movieClip.setVisibility(false);
                                       while(true)
                                       {
                                          if(!(_loc5_ && hideWhenDone))
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop17;
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       break loop16;
                                    }
                                    addr109:
                                 }
                                 break;
                                 if(_loc5_ && hideWhenDone)
                                 {
                                    continue;
                                 }
                                 addr47:
                                 if(!(_loc5_ && this))
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          break loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    movieClip.§ O§ = false;
                                    §§goto(addr109);
                                    §§goto(addr47);
                                 }
                                 addr124:
                              }
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr104);
                                 }
                                 else
                                 {
                                    while(!(_loc5_ && deltaTime))
                                    {
                                    }
                                    while(_loc6_ || hideWhenDone)
                                    {
                                       continue loop2;
                                    }
                                    loop7:
                                    for(; !_loc5_; §§goto(addr143))
                                    {
                                       §§push(movieClip.§4W§(deltaTime));
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop());
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          label = §§pop();
                                          continue loop7;
                                          addr134:
                                          while(true)
                                          {
                                             §§push(label);
                                             if(_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             if(§§pop() != "End")
                                             {
                                                break loop4;
                                             }
                                             §§goto(addr116);
                                          }
                                       }
                                    }
                                    addr116:
                                    addr143:
                                    while(true)
                                    {
                                       §§goto(addr163);
                                    }
                                    addr163:
                                    addr179:
                                 }
                                 §§goto(addr124);
                              }
                           }
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr134);
      }
      
      private function §]a§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         if(_loc5_ || pic)
         {
            if(!_loc5_)
            {
            }
         }
         loop0:
         for each(scoreObject in this.§%q§.data)
         {
            if(!_loc6_)
            {
               loop1:
               while(true)
               {
                  addr70:
                  while(scoreObject is UserLevelScoreVO)
                  {
                     if(_loc5_ || scoreObject)
                     {
                     }
                     do
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     while(_loc6_);
                     
                  }
                  continue loop0;
               }
            }
            while(false)
            {
               §§goto(addr70);
            }
            pic = new ProfilePicture(scoreObject.userId,"",false,§>Y§.NORMAL);
            if(!_loc6_)
            {
               loop5:
               while(true)
               {
                  addr126:
                  while(true)
                  {
                     pic.dispose();
                     continue loop5;
                  }
               }
               addr132:
            }
            while(true)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  if(true)
                  {
                     continue loop0;
                  }
               }
               else
               {
                  §§goto(addr132);
               }
               §§goto(addr126);
            }
         }
         if(!_loc5_)
         {
         }
      }
   }
}
