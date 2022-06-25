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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               addr162:
               while(true)
               {
                  this.§!S§ = [];
                  addr159:
                  while(true)
                  {
                  }
               }
               addr84:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               addr91:
               if(!_loc2_)
               {
                  addr42:
                  if(_loc2_ && _loc2_)
                  {
                     loop10:
                     for(; _loc3_; §§goto(addr42))
                     {
                        loop11:
                        while(_loc3_)
                        {
                           this.§0!!§ = this.§9!%§.y;
                           while(true)
                           {
                              if(!(_loc3_ || uiView))
                              {
                                 continue loop11;
                              }
                              addr63:
                              if(!(_loc2_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr84);
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    while(!_loc2_)
                                    {
                                       this.§"'§();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop11;
                                          }
                                          break;
                                          §§goto(addr63);
                                       }
                                    }
                                    addr145:
                                    while(!_loc2_)
                                    {
                                       this.§5!M§ = uiView;
                                       continue loop6;
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr130);
                              §§goto(addr91);
                           }
                           while(true)
                           {
                              §§goto(addr145);
                           }
                        }
                        loop9:
                        while(true)
                        {
                           if(!(_loc2_ && uiView))
                           {
                              this.§>6§ = this.§-!S§.x;
                              continue loop10;
                           }
                           addr154:
                           while(true)
                           {
                              super();
                              §§goto(addr151);
                              continue loop9;
                           }
                        }
                     }
                     §§goto(addr159);
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr154);
      }
      
      private function §"'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
                  loop2:
                  while(true)
                  {
                     this.§9!%§ = this.§5!M§.getItemByName("Container_VsEnemy") as UIContainerRovio;
                     while(true)
                     {
                        loop17:
                        for(; _loc1_ || _loc1_; if(_loc2_ && _loc2_)
                        {
                           continue;
                        },this.§8!9§ = this.§5!M§.getItemByName("TextField_NameHero") as UITextFieldRovio,§§goto(addr132))
                        {
                           loop18:
                           while(true)
                           {
                              this.§3R§ = this.§5!M§.getItemByName("TextField_VsScore") as UITextFieldRovio;
                              loop19:
                              while(true)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    this.§^r§ = this.§5!M§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
                                    loop21:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr176:
                                          if(!(_loc1_ || this))
                                          {
                                             break;
                                             addr144:
                                          }
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop17;
                                             }
                                             continue loop21;
                                          }
                                          continue loop17;
                                       }
                                       continue loop19;
                                    }
                                    addr310:
                                    loop6:
                                    while(!_loc2_)
                                    {
                                       this.§8-§ = this.§5!M§.getItemByName("MovieClip_VsAnimation") as §6#§;
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(!_loc2_)
                                          {
                                             this.§!D§ = this.§5!M§.getItemByName("MovieClip_Boom") as §6#§;
                                             loop9:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   this.§5+§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicHero") as §6#§;
                                                   loop11:
                                                   while(_loc1_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         this.§1!Y§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicEnemy") as §6#§;
                                                         loop13:
                                                         while(true)
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               this.§1!_§ = this.§5!M§.getItemByName("MovieClip_CrownHero") as §6#§;
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop14;
                                                                     addr91:
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     this.§3E§ = this.§5!M§.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop28:
                                                                           while(!_loc2_)
                                                                           {
                                                                              this.§>!<§ = this.§5!M§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr53:
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr87:
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              §§goto(addr91);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§3W§ = this.§5!M§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
                                                                                 continue loop15;
                                                                              }
                                                                              addr121:
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr144);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            addr132:
                                                            addr336:
                                                            while(true)
                                                            {
                                                               if(!(_loc1_ || this))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§+C§ = this.§5!M§.getItemByName("Container_Vs") as UIContainerRovio;
                                                               break loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr176);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr310);
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
         §§goto(addr336);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || playerNameMask)
         {
         }
         if(!(_loc3_ && playerNameMask))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  for(; !_loc3_; while(!(_loc3_ && playerUsername))
                  {
                     §§goto(addr54);
                     §§goto(addr62);
                  })
                  {
                     §§push(this.§;!=§);
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 continue loop3;
                              }
                              addr119:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§!!Y§);
                                 addr57:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       addr62:
                                       loop12:
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          addr69:
                                          if(_loc4_ || playerNameMask)
                                          {
                                             continue loop0;
                                          }
                                          addr101:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop12;
                                             }
                                             break;
                                             §§goto(addr69);
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr131:
                                 var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip;
                                 if(_loc4_ || playerNameMask)
                                 {
                                 }
                                 §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
                                 if(_loc4_ || playerNameMask)
                                 {
                                    §§push(§§pop());
                                 }
                                 var playerUsername:* = §§pop();
                                 if(_loc4_)
                                 {
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
                                             addr225:
                                             addr165:
                                             while(this.§&Y§)
                                             {
                                                while(true)
                                                {
                                                   addr220:
                                                   while(!_loc3_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              addr54:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§;!=§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§push(this.§!!Y§);
                           loop11:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(_loc1_ || this)
                                 {
                                    while(true)
                                    {
                                       addr122:
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(this.§!!Y§);
                                                continue loop11;
                                             }
                                             addr180:
                                             while(true)
                                             {
                                                §§push(this.§;!=§);
                                                addr171:
                                                while(true)
                                                {
                                                   §§pop().pause();
                                                   addr173:
                                                   while(true)
                                                   {
                                                      break loop14;
                                                   }
                                                   break loop14;
                                                }
                                             }
                                          }
                                          break;
                                          addr72:
                                          if(_loc2_ && this)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                §§push(this.§!!Y§);
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   continue loop11;
                                                }
                                                §§pop().§2!_§ = false;
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr139:
                                                   addr139:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§goto(addr72);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop17;
                                                         }
                                                         addr106:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                §§goto(addr173);
                                                addr93:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr180);
                                             }
                                             addr179:
                                          }
                                          §§goto(addr139);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§;!=§);
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                          §§goto(addr122);
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr139);
                                    §§goto(addr114);
                                 }
                                 addr114:
                                 addr164:
                              }
                              else
                              {
                                 §§goto(addr33);
                              }
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr179);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§0!h§ = levelId;
                     continue loop1;
                     loop20:
                     while(!(_loc3_ && levelScores))
                     {
                        this.§^!P§ = -1;
                        loop21:
                        while(_loc4_ || this)
                        {
                           loop22:
                           while(true)
                           {
                              this.§!S§ = [];
                              loop23:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr292:
                                    if(!(_loc3_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§8-§);
                                          while(true)
                                          {
                                             §§push(true);
                                             addr278:
                                             while(true)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                while(!_loc3_)
                                                {
                                                   loop28:
                                                   while(!(_loc3_ && levelId))
                                                   {
                                                      §§push(this.§8-§);
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§pop().§;!G§("Start");
                                                         addr259:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr245:
                                                                  while(_loc4_ || _loc3_)
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§]Z§ = false;
                                                                     addr339:
                                                                     while(true)
                                                                     {
                                                                        break loop28;
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  addr245:
                                                                  addr342:
                                                               }
                                                               break;
                                                            }
                                                            continue loop23;
                                                         }
                                                         addr357:
                                                         while(true)
                                                         {
                                                            addr350:
                                                            while(true)
                                                            {
                                                               this.§%q§ = levelScores;
                                                               addr347:
                                                               while(true)
                                                               {
                                                                  §§goto(addr342);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   loop18:
                                                   while(true)
                                                   {
                                                      this.§`f§ = null;
                                                      while(!_loc3_)
                                                      {
                                                         continue loop20;
                                                         if(_loc3_ && levelScores)
                                                         {
                                                            continue loop20;
                                                         }
                                                         §§goto(addr155);
                                                         loop32:
                                                         for(; !(_loc3_ && levelScores); while(!_loc3_)
                                                         {
                                                            this.§-!S§.x = this.§>6§;
                                                            §§goto(addr173);
                                                            §§goto(addr367);
                                                         })
                                                         {
                                                            loop33:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§4h§ = -1;
                                                                     while(!_loc3_)
                                                                     {
                                                                        continue loop32;
                                                                        addr124:
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           loop41:
                                                                           for(; _loc4_ || _loc3_; while(true)
                                                                           {
                                                                              if(!(_loc4_ || levelId))
                                                                              {
                                                                                 continue loop41;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 this.§6I§();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ && _loc3_)
                                                                                    {
                                                                                       continue loop43;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§+C§.setVisibility(false);
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                 }
                                                                                 addr387:
                                                                                 while(true)
                                                                                 {
                                                                                    break loop33;
                                                                                 }
                                                                              }
                                                                           },continue loop33)
                                                                           {
                                                                              addr105:
                                                                              if(_loc4_ || levelScores)
                                                                              {
                                                                                 this.§;!=§ = null;
                                                                                 continue;
                                                                              }
                                                                              addr152:
                                                                              while(true)
                                                                              {
                                                                                 break loop41;
                                                                                 §§goto(addr105);
                                                                              }
                                                                           }
                                                                           while(_loc4_)
                                                                           {
                                                                              this.§!!Y§ = null;
                                                                              §§goto(addr117);
                                                                              §§goto(addr98);
                                                                           }
                                                                           addr98:
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§9!%§);
                                                               addr364:
                                                               while(true)
                                                               {
                                                                  §§pop().setVisibility(true);
                                                                  §§goto(addr367);
                                                                  addr166:
                                                                  §§push(this.§9!%§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().y = this.§0!!§;
                                                                  §§goto(addr152);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr390:
                                                      while(true)
                                                      {
                                                         this.§^J§();
                                                         §§goto(addr387);
                                                      }
                                                   }
                                                   addr266:
                                                }
                                                addr398:
                                                while(true)
                                                {
                                                   this.§=o§();
                                                   break loop23;
                                                }
                                             }
                                             if(_loc3_ && levelScores)
                                             {
                                                continue;
                                             }
                                             §§push(true);
                                             if(_loc4_)
                                             {
                                                §§pop().§ O§ = §§pop();
                                                §§goto(addr235);
                                             }
                                             §§goto(addr278);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr350);
                              }
                              while(true)
                              {
                                 §§goto(addr390);
                                 §§goto(addr292);
                              }
                              addr155:
                              while(true)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop22;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop21;
                                 }
                                 if(_loc4_)
                                 {
                                    §§goto(addr166);
                                 }
                                 §§goto(addr347);
                              }
                              §§goto(addr364);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr398);
         }
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         var playerRank:* = 0;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              addr55:
                              while(true)
                              {
                                 this.§]a§();
                                 continue loop4;
                              }
                           }
                        }
                     }
                     if(!(_loc6_ && playerNameMask))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr55);
         }
         var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip;
         if(_loc6_)
         {
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
         if(!(_loc6_ && playerNameMask))
         {
            §§push(§§pop());
         }
         var username:* = §§pop();
         if(!_loc6_)
         {
            while(true)
            {
               §§push(this.§4!5§(username,this.§8!9§,playerNameMask));
               if(_loc7_ || this)
               {
                  §§push(§§pop());
               }
               username = §§pop();
               addr159:
               while(_loc7_)
               {
                  loop11:
                  while(true)
                  {
                     addr135:
                     while(true)
                     {
                        this.§`f§ = null;
                        continue loop11;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(!(_loc7_ || playerRank))
            {
               continue;
            }
            if(!(_loc6_ && playerRank))
            {
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr159);
               }
               §§goto(addr135);
            }
            §§goto(addr142);
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§0!h§));
         if(_loc7_ || playerNameMask)
         {
            §§push(int(§§pop()));
         }
         var currentHighScore:* = §§pop();
         if(!_loc6_)
         {
            loop14:
            while(true)
            {
               this.§,<§ = this.§%q§.§>!J§();
               loop15:
               while(true)
               {
                  loop16:
                  while(true)
                  {
                     §§push(this.§,<§);
                     loop17:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(1);
                           loop18:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop19:
                              while(true)
                              {
                                 playerRank = §§pop();
                                 loop20:
                                 while(!_loc6_)
                                 {
                                    loop21:
                                    while(true)
                                    {
                                       if(!(_loc6_ && playerNameMask))
                                       {
                                          §§push(this.§9!%§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(false);
                                             if(!_loc6_)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§8-§);
                                                            if(_loc7_)
                                                            {
                                                               §§push(false);
                                                               if(_loc7_ || playerNameMask)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_ && playerRank)
                                                                        {
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ && username)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§9!%§);
                                                                                 addr414:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    addr415:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().setVisibility(§§pop());
                                                                                       addr417:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && playerRank))
                                                                                          {
                                                                                             §§goto(addr410);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr476:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr452:
                                                                              while(true)
                                                                              {
                                                                                 playerRank = §§pop();
                                                                                 continue loop36;
                                                                                 addr448:
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           this.§-!S§.x = this.§9!%§.x;
                                                                           loop26:
                                                                           while(!_loc6_)
                                                                           {
                                                                              loop27:
                                                                              while(_loc7_)
                                                                              {
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§3E§.setText(playerRank.toString());
                                                                                       continue loop26;
                                                                                       while(_loc7_ || playerRank)
                                                                                       {
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       addr407:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc7_ || playerRank))
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(currentHighScore);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && username))
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    addr506:
                                                                                    var currentEagle:* = §§pop();
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr778:
                                                                                       addr882:
                                                                                       §§push(this.§1!_§);
                                                                                       §§push(playerRank);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §§push(3);
                                                                                          if(!(_loc6_ && playerNameMask))
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc6_ && playerNameMask))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc7_ || playerNameMask)
                                                                                                               {
                                                                                                                  §§push(currentHighScore);
                                                                                                                  if(!(_loc6_ && username))
                                                                                                                  {
                                                                                                                     addr830:
                                                                                                                     §§push(0);
                                                                                                                     if(_loc7_ || playerNameMask)
                                                                                                                     {
                                                                                                                        addr838:
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(!(_loc6_ && playerNameMask))
                                                                                                                        {
                                                                                                                           addr856:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr863:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || playerRank)
                                                                                                                                    {
                                                                                                                                       addr871:
                                                                                                                                       §§pop();
                                                                                                                                       addr873:
                                                                                                                                       addr872:
                                                                                                                                       addr874:
                                                                                                                                       §§push(currentEagle > 0);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr878:
                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                       addr772:
                                                                                                                                       addr880:
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr764:
                                                                                                                                          §§push(Boolean(playerRank > 0));
                                                                                                                                          if(Boolean(playerRank > 0))
                                                                                                                                          {
                                                                                                                                             addr768:
                                                                                                                                             §§pop();
                                                                                                                                             addr769:
                                                                                                                                             §§push(Boolean(playerRank <= 3));
                                                                                                                                             if(!(_loc6_ && playerNameMask))
                                                                                                                                             {
                                                                                                                                                addr754:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr757:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr758:
                                                                                                                                                      §§pop();
                                                                                                                                                      addr759:
                                                                                                                                                      §§push(currentHighScore);
                                                                                                                                                      if(!(_loc6_ && username))
                                                                                                                                                      {
                                                                                                                                                         addr688:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr694:
                                                                                                                                                               §§push(Boolean(§§pop() > §§pop()));
                                                                                                                                                               if(!(_loc6_ && playerNameMask))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ || playerRank)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!(_loc6_ && username))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr721:
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(!(_loc6_ && playerNameMask))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr729:
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr732:
                                                                                                                                                                                       if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(currentEagle);
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!(_loc6_ && username))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr647:
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(_loc7_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr665:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr667:
                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_ || playerRank)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr677:
                                                                                                                                                                                                                              §§push(this.§1!_§);
                                                                                                                                                                                                                              if(!(_loc6_ && username))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§;!G§(["Gold","Silver","Bronze"][playerRank - 1]);
                                                                                                                                                                                                                                 addr563:
                                                                                                                                                                                                                                 this.§+C§.setVisibility(true);
                                                                                                                                                                                                                                 addr621:
                                                                                                                                                                                                                                 addr569:
                                                                                                                                                                                                                                 if(!(_loc6_ && username))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§]Z§ = true;
                                                                                                                                                                                                                                       addr539:
                                                                                                                                                                                                                                       if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc6_ && playerNameMask))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc6_ && playerNameMask)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr621);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr593:
                                                                                                                                                                                                                                                      if(!(_loc6_ && username))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                                                                         §§goto(addr563);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr677);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr572);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr539);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr667);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr569);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr563);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr769);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr732);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr778);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr772);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr759);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(this.§1!_§);
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(!(_loc6_ && username))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().§?i§(§§pop());
                                                                                                                                                                                                                              §§goto(addr593);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr873);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr872);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr677);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr764);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr769);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr694);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr729);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr694);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr647);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr688);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr769);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr759);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr880);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr769);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr665);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr764);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr754);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr757);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr721);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr768);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr758);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr764);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr768);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr764);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr665);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr764);
                                                                                                                                          }
                                                                                                                                          §§goto(addr754);
                                                                                                                                       }
                                                                                                                                       §§goto(addr882);
                                                                                                                                    }
                                                                                                                                    §§goto(addr878);
                                                                                                                                 }
                                                                                                                                 §§goto(addr873);
                                                                                                                              }
                                                                                                                              §§goto(addr863);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr871);
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr874);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr871);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr871);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr863);
                                                                                                }
                                                                                                §§goto(addr871);
                                                                                             }
                                                                                             §§goto(addr856);
                                                                                          }
                                                                                          §§goto(addr838);
                                                                                       }
                                                                                       §§goto(addr830);
                                                                                    }
                                                                                    addr264:
                                                                                    §§goto(addr563);
                                                                                    loop31:
                                                                                    while(_loc7_ || this)
                                                                                    {
                                                                                       continue loop24;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_ || username)
                                                                                          {
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop31;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8-§);
                                                                                    addr402:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       addr403:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().setVisibility(§§pop());
                                                                                          addr405:
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             §§goto(addr407);
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        while(_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§7!e§(this.§,<§);
                                                                              addr470:
                                                                              while(true)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     §§goto(addr427);
                                                                  }
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         §§goto(addr405);
                                                         if(_loc6_ && playerNameMask)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            continue loop22;
                                                         }
                                                         if(false)
                                                         {
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr495);
                                                         §§push(AngryBirdsFP11.sUserProgress);
                                                      }
                                                   }
                                                   §§goto(addr417);
                                                }
                                             }
                                             §§goto(addr415);
                                          }
                                          §§goto(addr414);
                                       }
                                       §§goto(addr470);
                                    }
                                 }
                                 continue loop14;
                              }
                           }
                        }
                        §§goto(addr476);
                     }
                  }
               }
            }
         }
         §§goto(addr479);
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            loop0:
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                     }
                     addr195:
                     while(_loc3_ || this)
                     {
                        §§goto(addr202);
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || scoreVisible)
         {
         }
         var nextToBeatIndex:int = 0;
         if(!(_loc5_ && scoreVisible))
         {
            while(true)
            {
               while(!(_loc5_ && highscore))
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(this.§4h§ != scoreVisible)
                        {
                           loop4:
                           while(true)
                           {
                              this.§4h§ = scoreVisible;
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§3R§.setText(this.§,v§(this.§4h§));
                                    loop7:
                                    while(!(_loc5_ && score))
                                    {
                                       do
                                       {
                                          for(§§push(!this.§,<§); !§§pop(); )
                                          {
                                             §§push(Boolean(this.§%q§.§5!W§));
                                             loop10:
                                             for(; _loc6_ || highscore; if(_loc5_ && this)
                                             {
                                                continue;
                                             },§§goto(addr421),§§push(Boolean(§§pop())))
                                             {
                                                §§push(§§pop());
                                                loop11:
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
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(§]!B§.§>F§.objects.mSardineCanAdded);
                                                               if(_loc6_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr443:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc6_ || highscore))
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(!(_loc6_ || score));
                                       
                                       if(_loc6_ || this)
                                       {
                                          return;
                                          addr503:
                                       }
                                       break loop3;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        break;
                        addr397:
                        if(!(_loc5_ && highscore))
                        {
                           return;
                        }
                     }
                     return;
                  }
                  if(_loc5_ && score)
                  {
                     continue;
                  }
                  if(!(_loc5_ && scoreVisible))
                  {
                     if(!(_loc5_ && this))
                     {
                        §§goto(addr397);
                     }
                     §§goto(addr488);
                  }
                  §§goto(addr503);
               }
            }
         }
         §§goto(addr565);
      }
      
      private function §7!e§(enemyUser:UserLevelScoreVO) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
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
                     while(!_loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(enemyUser.rank > 0);
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || this)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr203:
                                       while(true)
                                       {
                                          §§push(enemyUser.rank <= 3);
                                          if(_loc2_ && _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          addr168:
                                          continue loop5;
                                       }
                                    }
                                    addr202:
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          this.§>!<§.setText(enemyUser.rank.toString());
                                          loop12:
                                          for(; _loc3_; if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          },if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr55);
                                          }
                                          else
                                          {
                                             §§goto(addr203);
                                          })
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                this.§^r§.setText(this.§,v§(enemyUser.levelScore));
                                                addr92:
                                                addr61:
                                                while(true)
                                                {
                                                   addr71:
                                                   addr121:
                                                   while(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop3;
                                                }
                                                loop16:
                                                while(_loc3_ || enemyUser)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr92);
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          addr147:
                                          while(true)
                                          {
                                             §§goto(addr121);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
         }
         var movieClip:§6#§ = null;
         if(!(_loc6_ && deltaTime))
         {
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr47);
         }
         loop4:
         for each(movieClip in [this.§8-§,this.§!D§,this.§8-§])
         {
            if(_loc6_ && this)
            {
            }
            loop5:
            while(true)
            {
               addr111:
               while(true)
               {
                  this.§!$§(movieClip,deltaTime,true);
                  continue loop5;
               }
               continue loop4;
            }
         }
         if(_loc6_)
         {
         }
      }
      
      private function §2!Q§(enemyUser:UserLevelScoreVO) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || userID)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  addr34:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!(_loc4_ || userID))
               {
                  continue;
               }
               if(_loc4_)
               {
                  while(false)
                  {
                     §§goto(addr34);
                  }
                  §§push(CustomAvatarCache.§#!@§(enemyUser.userId));
                  if(!(_loc5_ && userID))
                  {
                     §§push(§§pop());
                  }
                  var avatarString:* = §§pop();
                  if(!_loc4_)
                  {
                  }
                  var userID:String = enemyUser.userId;
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        this.§&Y§ = enemyUser;
                        loop6:
                        while(true)
                        {
                           addr203:
                           while(true)
                           {
                              this.§=o§();
                              continue loop6;
                           }
                        }
                     }
                  }
                  §§goto(addr105);
                  addr32:
               }
               §§goto(addr36);
            }
         }
         §§goto(addr32);
      }
      
      private function §4!5§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
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
                     loop3:
                     while(true)
                     {
                        §§push(username);
                        loop4:
                        while(true)
                        {
                           if(§§pop().length <= 6)
                           {
                              nameTextField.mClip.mask = null;
                              loop5:
                              while(_loc4_)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    maskClip.visible = false;
                                    addr93:
                                    while(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc4_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   if(_loc5_ && maskClip)
                                                   {
                                                      continue loop15;
                                                   }
                                                   addr88:
                                                   loop11:
                                                   while(true)
                                                   {
                                                      nameTextField.setText(username);
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               addr39:
                                                               if(!(_loc5_ && username))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr160:
                                                               while(_loc4_)
                                                               {
                                                                  maskClip.visible = true;
                                                                  §§goto(addr39);
                                                               }
                                                               while(!_loc5_)
                                                               {
                                                                  nameTextField.mClip.mask = maskClip;
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr145);
                                                                     addr125:
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                               addr145:
                                                               continue loop1;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr93);
                                                }
                                             }
                                             addr106:
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr160);
                                       }
                                       addr159:
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr159);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §@o§(holder:§6#§, newMovieClip:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || newMovieClip)
         {
         }
         if(_loc4_ || this)
         {
            while(_loc3_ && _loc3_)
            {
            }
         }
         while(true)
         {
            if(holder.mClip.numChildren <= 0)
            {
               if(_loc4_)
               {
                  if(!(_loc3_ && this))
                  {
                     loop2:
                     while(_loc4_)
                     {
                        holder.mClip.addChild(newMovieClip);
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(_loc3_ && holder)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        holder.mClip.removeChildAt(0);
                        break;
                     }
                     continue;
                     addr100:
                  }
                  §§goto(addr112);
               }
               §§goto(addr100);
            }
            §§goto(addr117);
         }
      }
      
      private function §6I§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var avatarString:* = §§pop();
         if(!_loc4_)
         {
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var userID:* = §§pop();
         if(_loc4_ || this)
         {
            loop4:
            while(true)
            {
               this.§^J§();
               loop5:
               while(true)
               {
                  while(true)
                  {
                     this.§`;§ = new §#![§(userID,"",false,§>Y§.NORMAL);
                     continue loop4;
                     addr126:
                     loop8:
                     while(!(_loc3_ && userID))
                     {
                        while(true)
                        {
                           this.§@o§(this.§5+§,this.§`;§);
                           while(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr112);
                                 continue loop8;
                              }
                           }
                           continue loop5;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      private function §1>§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§6I§();
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §=o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               for(§§push(this.§%p§); §§pop(); )
               {
                  if(_loc1_ && _loc2_)
                  {
                  }
                  while(true)
                  {
                     §§push(this.§%p§);
                     if(_loc1_ && _loc2_)
                     {
                        break;
                     }
                     §§pop().dispose();
                     continue loop0;
                     addr69:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     loop5:
                     while(true)
                     {
                        this.§%p§ = null;
                        while(!(_loc2_ || this))
                        {
                        }
                        if(!(_loc1_ && this))
                        {
                           break loop1;
                        }
                        addr67:
                        while(_loc2_)
                        {
                           §§goto(addr69);
                           continue loop5;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      private function §^J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         while(true)
         {
            §§push(this.§`;§);
            while(true)
            {
               if(!§§pop())
               {
                  return;
               }
               addr28:
               if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               while(true)
               {
                  §§push(this.§`;§);
                  if(!(_loc1_ || this))
                  {
                     break;
                  }
                  §§pop().dispose();
                  loop3:
                  do
                  {
                     while(true)
                     {
                        this.§`;§ = null;
                        while(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(_loc2_);
                  
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr28);
               }
            }
         }
      }
      
      public function set §-F§(value:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7w§ = value;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§+C§);
                        §§push(this.§7w§);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().setVisibility(§§pop());
                        loop4:
                        while(_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue loop2;
                              while(!(_loc3_ || value))
                              {
                                 continue loop4;
                              }
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §^_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            while(true)
            {
               this.§`f§ = this.§!S§.pop();
            }
            addr178:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§ + 15},{"x":this.§>6§},0.5,TweenManager.§0D§);
               while(_loc1_)
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§!!Y§);
                     while(true)
                     {
                        §§pop().onComplete = this.§>!N§;
                        §§push(this.§!!Y§);
                        addr112:
                        continue loop4;
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§pop().play();
                        loop8:
                        while(true)
                        {
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              continue loop8;
                              addr46:
                              if(!(_loc2_ && this))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr178);
            }
         }
      }
      
      private function §>!N§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var heroCurrentRank:int = 0;
         if(!(_loc3_ && heroCurrentRank))
         {
            addr144:
            while(true)
            {
            }
            addr144:
         }
         while(true)
         {
            this.§!!Y§ = null;
            while(true)
            {
               while(true)
               {
                  §§push(this.§!D§);
                  loop4:
                  while(true)
                  {
                     §§pop().§;!G§("Start");
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && heroCurrentRank))
                        {
                           §§push(this.§!D§);
                           continue loop4;
                        }
                     }
                     addr153:
                     var nextToBeat:UserLevelScoreVO = this.§!S§[this.§!S§.length - 1];
                     if(_loc4_)
                     {
                        addr782:
                        if(!(this.§`f§.rank == 1 || nextToBeat == null))
                        {
                           this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§},null,0.5);
                           addr625:
                           addr646:
                           §§push(this.§!!Y§);
                           if(!(_loc3_ && nextToBeat))
                           {
                              §§pop().onComplete = null;
                              addr609:
                              addr622:
                              §§push(this.§!!Y§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!(_loc3_ && nextToBeat))
                                 {
                                    §§pop().play();
                                    this.§7!e§(nextToBeat);
                                    addr571:
                                    heroCurrentRank = nextToBeat.rank + 1;
                                    addr606:
                                    addr586:
                                    addr583:
                                    if(!_loc3_)
                                    {
                                       addr550:
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr514:
                                             §§push(this.§1!_§);
                                             if(_loc4_ || nextToBeat)
                                             {
                                                §§push(heroCurrentRank <= 3);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr533:
                                                   if(_loc4_ || nextToBeat)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr510:
                                                         §§push(heroCurrentRank);
                                                         if(_loc4_ || heroCurrentRank)
                                                         {
                                                            addr459:
                                                            §§push(§§pop() > 0);
                                                            if(_loc4_ || this)
                                                            {
                                                               addr467:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr480:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr488:
                                                                              if(!(_loc3_ && nextToBeat))
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr503:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(heroCurrentRank);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(3);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         addr433:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr437:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr439:
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this.§1!_§);
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push("Gold");
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop().§;!G§(null[heroCurrentRank - 1]);
                                                                                                                           addr407:
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    addr339:
                                                                                                                                    §§push(this.§3E§);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§pop().setText(heroCurrentRank.toString());
                                                                                                                                       addr348:
                                                                                                                                       if(!(_loc3_ && nextToBeat))
                                                                                                                                       {
                                                                                                                                          addr332:
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   this.§;!=§ = TweenManager.§8!X§.§8m§(this.§9!%§.mClip,{"y":this.§0!!§},{"y":-150},2,TweenManager.§0D§);
                                                                                                                                                   addr320:
                                                                                                                                                   if(!(_loc3_ && nextToBeat))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr291:
                                                                                                                                                         if(!(_loc3_ && nextToBeat))
                                                                                                                                                         {
                                                                                                                                                            addr279:
                                                                                                                                                            this.§;!=§.onComplete = this.§7!>§;
                                                                                                                                                            addr282:
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr252:
                                                                                                                                                                     if(_loc4_ || heroCurrentRank)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc3_ && heroCurrentRank))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§;!=§);
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().play();
                                                                                                                                                                                    addr219:
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_ || heroCurrentRank)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc3_ && nextToBeat))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc3_ && nextToBeat))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr782);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr171);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr714:
                                                                                                                                                                                                                  this.§!!Y§.onComplete = this.§default§;
                                                                                                                                                                                                                  addr703:
                                                                                                                                                                                                                  this.§!!Y§.play();
                                                                                                                                                                                                                  addr720:
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr694:
                                                                                                                                                                                                                     this.§1!_§.§;!G§("Gold");
                                                                                                                                                                                                                     addr696:
                                                                                                                                                                                                                     addr693:
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_ || nextToBeat)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr674:
                                                                                                                                                                                                                           this.§3E§.setText("1");
                                                                                                                                                                                                                           §§push(this.§1!_§);
                                                                                                                                                                                                                           if(_loc4_ || nextToBeat)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr658);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr693);
                                                                                                                                                                                                                           addr677:
                                                                                                                                                                                                                           addr670:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§9!%§.mClip.x},null,0.5);
                                                                                                                                                                                                                        §§goto(addr720);
                                                                                                                                                                                                                        addr749:
                                                                                                                                                                                                                        addr752:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                                                                     addr699:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr717:
                                                                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                                                                                  addr710:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr699);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr439);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr320);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr252);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr219);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr606);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr550);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr439);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr407);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr282);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr279);
                                                                                                                                                                                 addr275:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr677);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr586);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr348);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr332);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr696);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr533);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr291);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr780);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr625);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr407);
                                                                                                                                                }
                                                                                                                                                §§goto(addr749);
                                                                                                                                             }
                                                                                                                                             §§goto(addr583);
                                                                                                                                          }
                                                                                                                                          §§goto(addr503);
                                                                                                                                       }
                                                                                                                                       §§goto(addr510);
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 this.§9!%§.setVisibility(false);
                                                                                                                                 §§goto(addr752);
                                                                                                                                 addr759:
                                                                                                                                 addr768:
                                                                                                                              }
                                                                                                                              §§goto(addr646);
                                                                                                                           }
                                                                                                                           §§goto(addr609);
                                                                                                                        }
                                                                                                                        §§goto(addr694);
                                                                                                                     }
                                                                                                                     §§goto(addr514);
                                                                                                                  }
                                                                                                                  §§goto(addr606);
                                                                                                               }
                                                                                                               §§goto(addr339);
                                                                                                            }
                                                                                                            §§goto(addr779);
                                                                                                         }
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                      §§goto(addr459);
                                                                                                   }
                                                                                                   §§goto(addr467);
                                                                                                }
                                                                                                §§goto(addr433);
                                                                                             }
                                                                                             §§goto(addr459);
                                                                                          }
                                                                                          §§goto(addr510);
                                                                                       }
                                                                                       §§goto(addr759);
                                                                                    }
                                                                                    §§goto(addr670);
                                                                                 }
                                                                                 §§goto(addr782);
                                                                              }
                                                                              §§goto(addr779);
                                                                           }
                                                                           §§goto(addr437);
                                                                        }
                                                                     }
                                                                     §§goto(addr782);
                                                                  }
                                                                  §§goto(addr480);
                                                               }
                                                            }
                                                            §§goto(addr782);
                                                         }
                                                         §§goto(addr571);
                                                      }
                                                      addr767:
                                                      §§goto(addr768);
                                                   }
                                                   §§goto(addr622);
                                                }
                                                addr658:
                                                §§pop().setVisibility(true);
                                                §§goto(addr660);
                                             }
                                             §§goto(addr674);
                                          }
                                          §§goto(addr710);
                                       }
                                       addr660:
                                       if(!(_loc4_ || this))
                                       {
                                          §§goto(addr696);
                                       }
                                       addr171:
                                       return;
                                    }
                                    addr577:
                                    §§goto(addr577);
                                 }
                                 §§goto(addr703);
                              }
                              §§goto(addr625);
                           }
                           §§goto(addr714);
                        }
                        §§goto(addr767);
                     }
                     §§goto(addr275);
                  }
                  if(!(_loc4_ || nextToBeat))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     §§goto(addr44);
                  }
                  §§goto(addr144);
               }
            }
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            if(!(_loc3_ && heroCurrentRank))
            {
               if(_loc4_)
               {
                  if(false)
                  {
                     §§goto(addr44);
                  }
                  §§push(this.§!S§);
                  if(_loc4_)
                  {
                     if(§§pop().length > 0)
                     {
                        §§goto(addr153);
                     }
                     else
                     {
                        §§push(this.§,<§);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr105);
            }
            §§goto(addr153);
         }
      }
      
      private function §7!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               this.§;!=§ = null;
            }
            addr112:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               this.§`f§ = null;
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     while(_loc2_)
                     {
                        if(this.§!S§.length <= 0)
                        {
                           return;
                        }
                        addr29:
                        loop5:
                        while(!(_loc1_ && this))
                        {
                           while(true)
                           {
                              this.§^_§();
                              while(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr112);
               }
            }
         }
      }
      
      private function §default§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               this.§!!Y§ = null;
            }
            addr98:
         }
         loop1:
         while(true)
         {
            do
            {
               this.§`f§ = null;
               continue loop1;
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      private function §,v§(amt:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_ && amt)
         {
         }
         var subString:* = null;
         if(_loc8_ || subStrings)
         {
            while(true)
            {
            }
            addr64:
         }
         loop1:
         while(true)
         {
            while(_loc8_)
            {
               while(true)
               {
                  while(_loc7_ && amt)
                  {
                  }
                  if(_loc7_)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     continue loop1;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var result:* = amt.toString();
                  if(!_loc8_)
                  {
                  }
                  var subStrings:Array = [];
                  if(!(_loc7_ && amt))
                  {
                     loop5:
                     while(true)
                     {
                        for(§§push(result); §§pop().length % 3 > 0; )
                        {
                           if(!_loc8_)
                           {
                           }
                           loop7:
                           while(true)
                           {
                              subStrings.push(result.substr(0,result.length % 3));
                              while(true)
                              {
                                 addr193:
                                 while(!(_loc7_ && result))
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           if(_loc7_ && amt)
                           {
                              continue;
                           }
                           result = §§pop().slice(result.length % 3);
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr193);
                        }
                        loop11:
                        while(true)
                        {
                           §§push(result);
                           if(!(_loc7_ && subStrings))
                           {
                              if(§§pop().length <= 0)
                              {
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && amt))
                                    {
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          addr109:
                                          continue;
                                       }
                                       var _loc5_:int = 0;
                                       if(!_loc7_)
                                       {
                                          var _loc6_:* = subStrings;
                                          if(_loc8_)
                                          {
                                             loop14:
                                             while(§§hasnext(_loc6_,_loc5_))
                                             {
                                                §§push(§§nextvalue(_loc5_,_loc6_));
                                                loop15:
                                                while(true)
                                                {
                                                   subString = §§pop();
                                                   addr262:
                                                   if(_loc7_ && result)
                                                   {
                                                      continue;
                                                   }
                                                   addr274:
                                                   result = §§pop() + (subString + ",");
                                                   loop19:
                                                   while(!(_loc7_ && amt))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc8_ || amt)
                                                      {
                                                         if(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(result);
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr262);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         continue loop15;
                                                         addr258:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            break loop19;
                                                         }
                                                         addr293:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr258);
                                                      §§goto(addr275);
                                                   }
                                                   addr275:
                                                }
                                             }
                                             addr297:
                                             if(!(_loc7_ && this))
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(result);
                                                   if(_loc8_ || amt)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr350:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().substr(§§pop(),result.length - 1));
                                                         }
                                                      }
                                                      addr349:
                                                   }
                                                   loop21:
                                                   while(true)
                                                   {
                                                      result = §§pop();
                                                      continue loop20;
                                                      addr339:
                                                      while(true)
                                                      {
                                                         §§push(result);
                                                         if(_loc8_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop21;
                                                      }
                                                   }
                                                }
                                                addr305:
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr297);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr357);
                              }
                              else
                              {
                                 loop12:
                                 do
                                 {
                                    subStrings.push(result.substr(0,3));
                                    while(!(_loc7_ && result))
                                    {
                                       §§push(result);
                                       if(!_loc7_)
                                       {
                                          §§push(3);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop().substr(§§pop()));
                                             if(!_loc7_)
                                             {
                                                result = §§pop();
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr357);
                                             }
                                             break loop11;
                                          }
                                          §§goto(addr350);
                                       }
                                       §§goto(addr349);
                                    }
                                 }
                                 while(_loc7_);
                                 
                                 §§goto(addr109);
                              }
                           }
                           break;
                        }
                        return §§pop();
                     }
                  }
                  while(true)
                  {
                     §§push(result);
                     if(!(_loc7_ && result))
                     {
                        §§goto(addr164);
                     }
                     §§goto(addr187);
                  }
               }
            }
            §§goto(addr64);
         }
      }
      
      private function §!$§(movieClip:§6#§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var label:String = null;
         if(!(_loc6_ && movieClip))
         {
            loop0:
            while(true)
            {
               addr194:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr122);
      }
      
      private function §]a§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || scoreObject)
         {
         }
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         if(_loc6_ || scoreObject)
         {
            if(_loc6_ || this)
            {
               addr47:
            }
            var _loc3_:int = 0;
            loop0:
            for each(scoreObject in this.§%q§.data)
            {
               if(!_loc6_)
               {
               }
               loop1:
               while(true)
               {
                  addr88:
                  while(scoreObject is UserLevelScoreVO)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            if(!_loc6_)
            {
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
