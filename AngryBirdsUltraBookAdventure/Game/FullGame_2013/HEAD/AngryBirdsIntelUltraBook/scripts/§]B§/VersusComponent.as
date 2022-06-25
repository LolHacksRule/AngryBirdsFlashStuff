package §]B§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §"!i§.FriendListItemVO;
   import §"!i§.UserLevelScoreVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.CustomAvatarCache;
   import §0!Q§.UIComponentRovio;
   import §6a§.§=D§;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §6v§.§5!D§;
   import §6v§.§;!G§;
   import §6v§.ProfilePicture;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
       
      
      private var §`=§:§`X§;
      
      private var §`!+§:CachedFacebookFriends;
      
      private var §#!O§:§?W§;
      
      private var §'`§:§?W§;
      
      private var §#F§:Number;
      
      private var §50§:Number;
      
      private var § D§:ProfilePicture;
      
      private var §8! §:§;!G§;
      
      private var §3U§:Boolean = false;
      
      private var §[!C§:Boolean;
      
      private var §!?§:UserLevelScoreVO;
      
      private var §]1§:int;
      
      private var §3D§:UserLevelScoreVO;
      
      private var §[a§:int = -1;
      
      private var §;O§:Array;
      
      private var §9P§:String;
      
      private var §5!9§:UserLevelScoreVO;
      
      private var §+!b§:UIContainerRovio;
      
      private var §use §:UIContainerRovio;
      
      private var §8+§:UIComponentRovio;
      
      private var §'F§:§=D§;
      
      private var § !a§:§=D§;
      
      private var §;!S§:§=D§;
      
      private var §'%§:§=D§;
      
      private var §&N§:§=D§;
      
      private var §&]§:§=D§;
      
      private var §[u§:UITextFieldRovio;
      
      private var §^S§:UITextFieldRovio;
      
      private var § for§:UITextFieldRovio;
      
      private var §`!`§:UITextFieldRovio;
      
      private var §^!#§:UITextFieldRovio;
      
      private var §47§:UITextFieldRovio;
      
      public function VersusComponent(uiView:§`X§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            while(true)
            {
               loop1:
               while(_loc2_)
               {
                  this.§;O§ = [];
                  while(true)
                  {
                     addr121:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     loop9:
                     for(; _loc2_ || _loc2_; loop11:
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           addr83:
                           if(!(_loc3_ && _loc2_))
                           {
                              this.§50§ = this.§8+§.y;
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop11;
                                 }
                                 if(!_loc3_)
                                 {
                                    addr56:
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr97);
                              }
                              while(_loc2_ || _loc3_)
                              {
                                 §§goto(addr121);
                                 §§goto(addr56);
                              }
                              §§goto(addr153);
                              addr114:
                           }
                           break;
                        }
                        continue loop9;
                     },while(true)
                     {
                        this.§@!3§();
                        §§goto(addr114);
                        §§goto(addr83);
                     })
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        this.§#F§ = this.§use §.x;
                        while(true)
                        {
                           continue loop9;
                        }
                     }
                     while(true)
                     {
                        this.§`=§ = uiView;
                        §§goto(addr146);
                        §§goto(addr100);
                     }
                     addr100:
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      private function §@!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               this.§use § = this.§`=§.getItemByName("Container_VsHero") as UIContainerRovio;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§8+§ = this.§`=§.getItemByName("Container_VsEnemy") as UIContainerRovio;
                     while(true)
                     {
                        loop4:
                        while(!_loc1_)
                        {
                           this.§+!b§ = this.§`=§.getItemByName("Container_Vs") as UIContainerRovio;
                           loop5:
                           while(true)
                           {
                              while(!_loc1_)
                              {
                                 this.§'F§ = this.§`=§.getItemByName("MovieClip_VsAnimation") as §=D§;
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§ !a§ = this.§`=§.getItemByName("MovieClip_Boom") as §=D§;
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             this.§;!S§ = this.§`=§.getItemByName("MovieClip_VsProfilePicHero") as §=D§;
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   this.§'%§ = this.§`=§.getItemByName("MovieClip_VsProfilePicEnemy") as §=D§;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&N§ = this.§`=§.getItemByName("MovieClip_CrownHero") as §=D§;
                                                         continue loop9;
                                                         loop17:
                                                         while(_loc2_ || _loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            loop18:
                                                            while(true)
                                                            {
                                                               this.§[u§ = this.§`=§.getItemByName("TextField_VsScore") as UITextFieldRovio;
                                                               addr200:
                                                               while(_loc2_)
                                                               {
                                                                  while(!_loc1_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§^S§ = this.§`=§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
                                                                        addr173:
                                                                        loop22:
                                                                        while(!_loc1_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           addr230:
                                                                           while(_loc2_)
                                                                           {
                                                                              this.§&]§ = this.§`=§.getItemByName("MovieClip_CrownEnemy") as §=D§;
                                                                              break loop22;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr71:
                                                if(_loc1_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                addr78:
                                                if(!_loc2_)
                                                {
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr94:
                                                            while(!(_loc1_ && this))
                                                            {
                                                               while(!_loc1_)
                                                               {
                                                                  this.§47§ = this.§`=§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
                                                                  continue loop30;
                                                               }
                                                            }
                                                            continue loop9;
                                                            addr94:
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            §§goto(addr71);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§ for§ = this.§`=§.getItemByName("TextField_NameHero") as UITextFieldRovio;
                                                               addr147:
                                                               while(!_loc1_)
                                                               {
                                                                  while(_loc2_)
                                                                  {
                                                                     this.§`!`§ = this.§`=§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
                                                                     while(true)
                                                                     {
                                                                        addr104:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §§goto(addr106);
                                                                           }
                                                                           §§goto(addr173);
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr152:
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr81);
                                                   }
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr104);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
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
                     §§push(this.§#!O§);
                     loop3:
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
                                 §§push(this.§'`§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             addr65:
                                             if(!(_loc3_ || playerNameMask))
                                             {
                                                while(!_loc4_)
                                                {
                                                   §§goto(addr65);
                                                }
                                                continue loop0;
                                                addr98:
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(!(_loc4_ && playerNameMask))
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§'`§);
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().play();
                                                      do
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr48:
                                                         if(_loc3_ || playerUsername)
                                                         {
                                                            continue;
                                                         }
                                                         addr83:
                                                         while(_loc3_)
                                                         {
                                                            continue loop9;
                                                            §§goto(addr48);
                                                         }
                                                      }
                                                      while(_loc4_ && playerNameMask);
                                                      
                                                      while(true)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                                addr116:
                                                while(_loc3_)
                                                {
                                                }
                                                continue loop1;
                                                while(_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             addr73:
                                             §§goto(addr83);
                                          }
                                          §§goto(addr73);
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 var playerNameMask:MovieClip = this.§`=§.getItemByName("PlayerNameMask").mClip;
                                 if(!_loc3_)
                                 {
                                 }
                                 §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
                                 if(!(_loc4_ && playerUsername))
                                 {
                                    §§push(§§pop());
                                 }
                                 var playerUsername:* = §§pop();
                                 if(!_loc3_)
                                 {
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.§+$§(playerUsername,this.§ for§,playerNameMask));
                                    loop16:
                                    while(true)
                                    {
                                       §§pop();
                                       addr238:
                                       while(true)
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(this.§5!9§)
                                                {
                                                   do
                                                   {
                                                      while(_loc3_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      continue loop18;
                                                   }
                                                   while(_loc4_);
                                                   
                                                   break;
                                                }
                                                break;
                                             }
                                             continue loop15;
                                          }
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr37);
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
               §§push(this.§#!O§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§'`§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       loop6:
                                       while(_loc1_)
                                       {
                                          §§push(this.§'`§);
                                          loop7:
                                          while(true)
                                          {
                                             §§pop().pause();
                                             addr107:
                                             addr55:
                                             while(true)
                                             {
                                                addr92:
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr185:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!O§);
                                                      break loop9;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§pop().pause();
                                                   continue loop0;
                                                   addr165:
                                                   §§push(this.§#!O§);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§pop().§1!,§ = false;
                                                         addr143:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               break loop6;
                                                            }
                                                            break;
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            §§goto(addr165);
                                                            §§goto(addr143);
                                                         }
                                                         addr143:
                                                         continue loop0;
                                                         addr163:
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             if(_loc1_)
                                             {
                                                §§goto(addr33);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr184:
                                    }
                                    §§goto(addr185);
                                 }
                              }
                              addr33:
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§9P§ = levelId;
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.§"1§();
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§1!a§();
                                 while(true)
                                 {
                                    addr172:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    this.§use §.x = this.§#F§;
                                    loop35:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this.§8+§);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§pop().y = this.§50§;
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop35;
                                             }
                                             continue loop5;
                                             addr149:
                                          }
                                          §§goto(addr332);
                                          §§goto(addr320);
                                          if(_loc3_ && levelId)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§'`§ = null;
                                                §§goto(addr93);
                                             }
                                             §§goto(addr335);
                                          }
                                          §§goto(addr303);
                                       }
                                       while(true)
                                       {
                                          §§pop().setVisibility(true);
                                          continue loop2;
                                          §§goto(addr149);
                                       }
                                    }
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr223);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr384);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || username)
         {
         }
         var playerRank:int = 0;
         if(!(_loc6_ && playerRank))
         {
            while(true)
            {
               addr83:
               while(true)
               {
                  addr80:
                  while(true)
                  {
                  }
               }
            }
            addr85:
         }
         loop3:
         while(true)
         {
            loop4:
            while(true)
            {
               if(_loc7_ || playerRank)
               {
                  if(_loc7_)
                  {
                     loop5:
                     for(; _loc7_; while(true)
                     {
                        this.dynamic();
                        while(!_loc7_)
                        {
                        }
                        if(_loc7_ || this)
                        {
                           continue;
                        }
                        continue loop5;
                     },continue loop4)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr80);
                  }
                  break;
               }
               continue loop3;
            }
            §§goto(addr83);
         }
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(Boolean(this.§`!+§.§#]§));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop19:
                              while(true)
                              {
                                 §§pop();
                                 loop20:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§`S§.§[o§.objects.mSardineCanAdded);
                                    if(_loc2_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                addr232:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr233:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      §§push(this.§[!C§);
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   continue loop20;
                                                }
                                                continue loop0;
                                                addr232:
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§3U§);
                                                         loop12:
                                                         while(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(!§§pop());
                                                            loop13:
                                                            while(_loc2_)
                                                            {
                                                               if(_loc2_ || deltaTime)
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop14:
                                                                        for(; _loc2_ || _loc2_; while(_loc3_ && this)
                                                                        {
                                                                           continue loop14;
                                                                        })
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.initialize();
                                                                              addr101:
                                                                              addr70:
                                                                              while(true)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              while(!(_loc3_ && deltaTime))
                                                                              {
                                                                                 if(!(_loc2_ || _loc3_))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(this.§3D§ == null);
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr101);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr156:
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           §§push(true);
                                                                           break loop12;
                                                                        }
                                                                        addr187:
                                                                        this.§+!b§.setVisibility(false);
                                                                        continue loop1;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.updateAnimations(deltaTime);
                                                                        §§goto(addr70);
                                                                        §§goto(addr96);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop9;
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr187);
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr202:
                                    }
                                    §§goto(addr232);
                                 }
                              }
                              addr246:
                           }
                           §§goto(addr202);
                        }
                     }
                  }
                  §§goto(addr246);
               }
            }
         }
         §§goto(addr101);
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var nextToBeatIndex:int = 0;
         if(!_loc6_)
         {
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     addr556:
                     while(true)
                     {
                        if(this.§]1§ == scoreVisible)
                        {
                           return;
                           addr552:
                        }
                        while(true)
                        {
                           this.§]1§ = scoreVisible;
                           continue loop2;
                           addr546:
                        }
                     }
                  }
                  if(!(_loc6_ && highscore))
                  {
                     return;
                     addr415:
                  }
               }
            }
         }
         §§goto(addr415);
      }
      
      private function §-V§(enemyUser:UserLevelScoreVO) : void
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
                  §§push(this.§&]§);
                  while(true)
                  {
                     §§pop().setVisibility(enemyUser.rank <= 3);
                     continue loop1;
                     addr184:
                     loop11:
                     while(true)
                     {
                        §§push(this.§&]§);
                        if(!(_loc2_ || enemyUser))
                        {
                           break;
                        }
                        §§pop().§`c§(["Gold","Silver","Bronze"][enemyUser.rank - 1]);
                        loop12:
                        while(_loc2_ || _loc2_)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 this.§47§.setText(enemyUser.rank.toString());
                                 loop15:
                                 for(; !_loc3_; loop17:
                                 for(; _loc2_ || enemyUser; if(!(_loc2_ || enemyUser))
                                 {
                                    continue;
                                 },addr45:,if(_loc3_ && _loc3_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          continue loop0;
                                       }
                                       addr210:
                                       while(true)
                                       {
                                          §§push(enemyUser.rank > 0);
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr201:
                                             addr157:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop12;
                                                   }
                                                   addr206:
                                                }
                                                addr167:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                             if(!(_loc2_ || enemyUser))
                                             {
                                                continue;
                                             }
                                             §§push(Boolean(§§pop()));
                                             if(_loc3_)
                                             {
                                                §§goto(addr201);
                                             }
                                             §§goto(addr167);
                                          }
                                          continue loop10;
                                       }
                                    }
                                    continue loop0;
                                 },§§goto(addr52))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop14;
                                    }
                                    loop18:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§7`§(enemyUser);
                                          while(!_loc3_)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop17;
                                                }
                                                continue loop18;
                                             }
                                          }
                                          continue loop12;
                                       }
                                       return;
                                    }
                                    §§goto(addr87);
                                 })
                                 {
                                    while(true)
                                    {
                                       this.§^S§.setText(this.§3!>§(enemyUser.levelScore));
                                       continue loop15;
                                    }
                                 }
                                 continue loop11;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(enemyUser.rank <= 3);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr157);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr201);
                     }
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr184);
            }
         }
         §§goto(addr65);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var movieClip:§=D§ = null;
         if(!(_loc6_ && deltaTime))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc6_ && deltaTime)
                  {
                  }
                  if(!_loc6_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(movieClip in [this.§'F§,this.§ !a§,this.§'F§])
                     {
                        if(_loc6_ && movieClip)
                        {
                        }
                        loop5:
                        while(true)
                        {
                           do
                           {
                              this.§-!5§(movieClip,deltaTime,true);
                              continue loop5;
                           }
                           while(false);
                           
                           continue loop4;
                        }
                     }
                     if(_loc6_ && deltaTime)
                     {
                     }
                     return;
                     addr42:
                  }
                  break;
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §7`§(enemyUser:UserLevelScoreVO) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
         }
         if(_loc5_ || avatarString)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               addr54:
               while(true)
               {
                  while(!_loc5_)
                  {
                  }
                  if(!(_loc5_ || this))
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §+$§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || nameTextField)
         {
         }
         if(!(_loc5_ && maskClip))
         {
            loop0:
            while(true)
            {
               addr194:
               while(true)
               {
                  addr171:
                  if(!(_loc4_ || username))
                  {
                     continue;
                  }
                  maskClip.visible = true;
                  loop12:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        nameTextField.setText(username);
                        loop11:
                        while(true)
                        {
                           if(_loc4_ || maskClip)
                           {
                              addr64:
                              if(_loc4_ || username)
                              {
                                 if(_loc5_ && maskClip)
                                 {
                                    continue loop12;
                                 }
                                 if(_loc5_ && nameTextField)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    addr51:
                                    §§push(username);
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop().length <= 6)
                                       {
                                          nameTextField.mClip.mask = null;
                                          break loop11;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                nameTextField.mClip.mask = maskClip;
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(!(_loc4_ || maskClip))
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr171);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         addr190:
                                                         while(true)
                                                         {
                                                            §§push(username);
                                                            addr103:
                                                            continue loop4;
                                                            if(!(_loc4_ || username))
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      addr193:
                                                   }
                                                   §§goto(addr187);
                                                }
                                                addr187:
                                                addr150:
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr194);
                                       }
                                    }
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc4_ || maskClip)
                                    {
                                       §§goto(addr103);
                                    }
                                    addr113:
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || maskClip)
                                          {
                                             maskClip.visible = false;
                                             continue loop8;
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr144);
                                       continue loop8;
                                    }
                                 }
                                 §§goto(addr190);
                              }
                              break;
                           }
                           §§goto(addr91);
                        }
                        while(true)
                        {
                           §§goto(addr113);
                           §§goto(addr64);
                        }
                     }
                  }
                  addr144:
               }
            }
         }
         §§goto(addr193);
      }
      
      private function §9!K§(holder:§=D§, newMovieClip:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc3_ && holder)
         {
         }
         while(!(_loc4_ || this))
         {
         }
         while(true)
         {
            if(holder.mClip.numChildren <= 0)
            {
               loop2:
               while(!_loc3_)
               {
                  if(!(_loc4_ || this))
                  {
                     addr112:
                     break;
                     addr112:
                  }
                  while(true)
                  {
                     holder.mClip.addChild(newMovieClip);
                     while(_loc4_ || holder)
                     {
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(!(_loc4_ || _loc3_))
               {
                  §§goto(addr112);
               }
               continue;
            }
            while(true)
            {
               holder.mClip.removeChildAt(0);
               §§goto(addr112);
            }
         }
      }
      
      private function §-c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(!_loc4_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc4_)
               {
               }
               if(!_loc4_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
               }
               var avatarString:* = §§pop();
               if(_loc3_)
               {
               }
               §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               var userID:* = §§pop();
               if(_loc4_ || avatarString)
               {
                  while(true)
                  {
                     this.§1!a§();
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           this.§8! § = new §;!G§(userID,"",false,§5!D§.NORMAL);
                           while(true)
                           {
                              addr121:
                              while(!(_loc3_ && _loc3_))
                              {
                                 continue loop5;
                              }
                           }
                        }
                        if(!(_loc4_ || userID))
                        {
                           continue;
                        }
                        §§goto(addr118);
                     }
                  }
               }
               §§goto(addr118);
            }
         }
      }
      
      private function § !f§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || e)
         {
         }
         if(_loc3_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            do
            {
               this.§-c§();
               while(_loc3_)
               {
                  if(_loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private function §"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         loop0:
         while(true)
         {
            §§push(this.§ D§);
            while(§§pop())
            {
               if(_loc2_ || this)
               {
               }
               loop2:
               while(true)
               {
                  §§push(this.§ D§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().dispose();
                  while(true)
                  {
                     loop4:
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§ D§ = null;
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop4;
                           addr78:
                           if(_loc2_ || _loc2_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
      }
      
      private function §1!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               for(§§push(this.§8! §); §§pop(); )
               {
                  while(true)
                  {
                     continue loop0;
                  }
                  §§push(this.§8! §);
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §§pop().dispose();
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop4;
                        }
                        this.§8! § = null;
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                        }
                        §§goto(addr101);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function set §"!A§(value:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc3_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               this.§[!C§ = value;
               while(_loc2_ || this)
               {
                  continue loop0;
                  while(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§+!b§);
                     §§push(this.§[!C§);
                     if(_loc2_ || this)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().setVisibility(§§pop());
                     while(_loc3_ && value)
                     {
                     }
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private function §`!Y§() : void
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
               this.§3D§ = this.§;O§.pop();
               while(true)
               {
                  while(true)
                  {
                     this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§#F§ + 15},{"x":this.§#F§},0.5,TweenManager.§&=§);
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.§'`§);
                           loop5:
                           while(true)
                           {
                              §§pop().onComplete = this.§7!§;
                              addr114:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           SoundEngine.§-!h§("NextToBeat_Sound","ChannelPowerups");
                           loop10:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop10;
                                 }
                                 §§goto(addr36);
                              }
                              return;
                           }
                           §§goto(addr114);
                        }
                     }
                  }
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §7!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && nextToBeat)
         {
         }
         var heroCurrentRank:int = 0;
         if(_loc4_ && this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               this.§'`§ = null;
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§ !a§);
                     while(true)
                     {
                        §§pop().§`c§("Start");
                        continue loop3;
                        loop7:
                        while(_loc3_ || nextToBeat)
                        {
                           §§push(true);
                           loop8:
                           while(true)
                           {
                              §§pop().§?§ = §§pop();
                              if(!(_loc4_ && nextToBeat))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                    addr82:
                                 }
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§ !a§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop8;
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                              addr152:
                              addr165:
                              var nextToBeat:UserLevelScoreVO = this.§;O§[this.§;O§.length - 1];
                              if(_loc3_)
                              {
                                 addr746:
                                 §§push(Boolean(this.§3D§.rank == 1));
                                 if(!(Boolean(this.§3D§.rank == 1)))
                                 {
                                    addr743:
                                    §§pop();
                                    addr744:
                                    §§push(nextToBeat == null);
                                    if(_loc3_ || this)
                                    {
                                       addr730:
                                       addr729:
                                       if(§§pop())
                                       {
                                          this.§8+§.setVisibility(false);
                                          this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§8+§.mClip.x},null,0.5);
                                          addr671:
                                          this.§'`§.onComplete = this.§ ]§;
                                          addr660:
                                          this.§'`§.play();
                                          addr699:
                                          if(_loc3_)
                                          {
                                             addr649:
                                             this.§&N§.§`c§("Gold");
                                             addr648:
                                             addr656:
                                             if(_loc3_)
                                             {
                                                addr635:
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && heroCurrentRank))
                                                   {
                                                      addr629:
                                                      this.§^!#§.setText("1");
                                                      addr617:
                                                      §§push(this.§&N§);
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr648);
                                                      }
                                                      addr620:
                                                      §§pop().setVisibility(true);
                                                      addr170:
                                                      return;
                                                      addr632:
                                                      addr625:
                                                      addr622:
                                                   }
                                                   §§goto(addr699);
                                                }
                                                §§goto(addr656);
                                             }
                                             §§goto(addr744);
                                          }
                                          §§goto(addr746);
                                          addr732:
                                          addr674:
                                          addr731:
                                          addr696:
                                          addr677:
                                          addr667:
                                          addr716:
                                       }
                                       this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§#F§},null,0.5);
                                       addr606:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr578:
                                          if(_loc3_ || nextToBeat)
                                          {
                                             addr564:
                                             §§push(this.§'`§);
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop().onComplete = null;
                                                   addr560:
                                                   addr575:
                                                   §§push(this.§'`§);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().play();
                                                      addr557:
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.§-V§(nextToBeat);
                                                         addr539:
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               addr520:
                                                               heroCurrentRank = nextToBeat.rank + 1;
                                                               addr504:
                                                               addr521:
                                                               if(_loc3_ || heroCurrentRank)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr483:
                                                                     §§push(this.§&N§);
                                                                     §§push(heroCurrentRank <= 3);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        addr490:
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr479:
                                                                                 §§push(heroCurrentRank);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr437:
                                                                                    §§push(§§pop() > 0);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(_loc3_ || heroCurrentRank)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr466:
                                                                                                         §§pop();
                                                                                                         addr467:
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(heroCurrentRank);
                                                                                                               if(_loc3_ || this)
                                                                                                               {
                                                                                                                  §§push(3);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     if(!(_loc4_ && heroCurrentRank))
                                                                                                                     {
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr419:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr421:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr423:
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr431:
                                                                                                                                       §§push(this.§&N§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || nextToBeat)
                                                                                                                                          {
                                                                                                                                             §§push("Gold");
                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§pop().§`c§(null[heroCurrentRank - 1]);
                                                                                                                                                addr327:
                                                                                                                                                addr388:
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || nextToBeat)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || nextToBeat)
                                                                                                                                                      {
                                                                                                                                                         addr308:
                                                                                                                                                         §§push(this.§^!#§);
                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§pop().setText(heroCurrentRank.toString());
                                                                                                                                                            addr322:
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr301:
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§#!O§ = TweenManager.§7!E§.§5§(this.§8+§.mClip,{"y":this.§50§},{"y":-150},2,TweenManager.§&=§);
                                                                                                                                                                        addr294:
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr261:
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr253:
                                                                                                                                                                                       this.§#!O§.onComplete = this.§5[§;
                                                                                                                                                                                       addr256:
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr228:
                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc4_ && heroCurrentRank))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || nextToBeat)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§#!O§);
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().play();
                                                                                                                                                                                                      addr200:
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_ || nextToBeat)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr327);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr170);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr228);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr200);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr539);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr504);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr388);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr261);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr256);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr253);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr732);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr674);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr322);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr431);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr490);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr301);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr294);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr479);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr467);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr731);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr557);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr521);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr560);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr629);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr696);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr606);
                                                                                                                                                }
                                                                                                                                                §§goto(addr423);
                                                                                                                                             }
                                                                                                                                             §§goto(addr649);
                                                                                                                                          }
                                                                                                                                          §§goto(addr617);
                                                                                                                                       }
                                                                                                                                       §§goto(addr483);
                                                                                                                                    }
                                                                                                                                    §§goto(addr632);
                                                                                                                                 }
                                                                                                                                 §§goto(addr308);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr743);
                                                                                                                        }
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  §§goto(addr437);
                                                                                                               }
                                                                                                               §§goto(addr479);
                                                                                                            }
                                                                                                            §§goto(addr635);
                                                                                                         }
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                      §§goto(addr421);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                          §§goto(addr466);
                                                                                       }
                                                                                       §§goto(addr730);
                                                                                    }
                                                                                    §§goto(addr466);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                              §§goto(addr622);
                                                                           }
                                                                           §§goto(addr575);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     §§goto(addr620);
                                                                  }
                                                                  §§goto(addr578);
                                                               }
                                                               §§goto(addr539);
                                                            }
                                                            §§goto(addr677);
                                                         }
                                                         §§goto(addr699);
                                                      }
                                                      §§goto(addr667);
                                                   }
                                                   §§goto(addr564);
                                                }
                                                §§goto(addr671);
                                             }
                                             §§goto(addr660);
                                          }
                                          §§goto(addr649);
                                       }
                                       §§goto(addr716);
                                    }
                                    §§goto(addr746);
                                 }
                                 §§goto(addr729);
                              }
                              §§goto(addr327);
                           }
                           while(true)
                           {
                              continue loop7;
                           }
                        }
                     }
                  }
               }
               if(!(_loc3_ || heroCurrentRank))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§goto(addr39);
               }
               §§goto(addr152);
            }
         }
      }
      
      private function §5[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               this.§#!O§ = null;
               while(true)
               {
                  addr43:
                  if(_loc1_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            this.§3D§ = null;
            while(true)
            {
               addr109:
               while(_loc1_)
               {
                  if(this.§;O§.length > 0)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                     addr98:
                  }
                  else
                  {
                     §§goto(addr28);
                  }
               }
            }
         }
      }
      
      private function § ]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               this.§'`§ = null;
               while(true)
               {
                  addr81:
                  if(_loc2_ || _loc1_)
                  {
                     addr88:
                     if(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc1_ && _loc1_)
                        {
                           while(true)
                           {
                              this.§3D§ = null;
                              continue loop3;
                           }
                           return;
                           addr69:
                           addr91:
                        }
                        §§goto(addr81);
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §3!>§(amt:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && amt)
         {
         }
         var subString:* = null;
         if(!(_loc8_ && this))
         {
            while(true)
            {
               loop1:
               for(; !_loc8_; if(_loc8_ && amt)
               {
                  continue;
               })
               {
                  loop2:
                  while(true)
                  {
                     addr49:
                     while(true)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         var result:* = amt.toString();
         if(_loc7_ || result)
         {
         }
         var subStrings:Array = [];
         if(!_loc8_)
         {
            loop6:
            while(true)
            {
               for(§§push(result); §§pop().length % 3 > 0; )
               {
                  addr216:
                  §§push(result);
                  if(_loc7_)
                  {
                     §§push(§§pop().slice(result.length % 3));
                  }
                  if(!_loc8_)
                  {
                     result = §§pop();
                     if(_loc7_)
                     {
                        break;
                     }
                     loop26:
                     while(true)
                     {
                        if(!(_loc8_ && this))
                        {
                           continue loop6;
                        }
                        loop25:
                        while(_loc7_ || subStrings)
                        {
                           if(_loc7_ || result)
                           {
                              continue loop26;
                           }
                           addr250:
                           while(true)
                           {
                              break loop25;
                           }
                        }
                        while(true)
                        {
                           subStrings.push(result.substr(0,result.length % 3));
                           §§goto(addr228);
                        }
                        addr228:
                     }
                  }
               }
               while(true)
               {
                  §§push(result);
                  if(_loc7_ || subStrings)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc7_ || result)
                        {
                           if(!_loc8_)
                           {
                              if(_loc7_)
                              {
                                 if(true)
                                 {
                                    var _loc5_:int = 0;
                                    if(_loc7_)
                                    {
                                       var _loc6_:* = subStrings;
                                       if(_loc7_)
                                       {
                                          loop14:
                                          while(§§hasnext(_loc6_,_loc5_))
                                          {
                                             §§push(§§nextvalue(_loc5_,_loc6_));
                                             loop15:
                                             while(true)
                                             {
                                                subString = §§pop();
                                                addr307:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      continue loop15;
                                                      addr273:
                                                      if(!(_loc8_ && subStrings))
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr311:
                                          if(_loc7_)
                                          {
                                             addr368:
                                             loop21:
                                             while(true)
                                             {
                                                §§push(result);
                                                addr351:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr352:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().substr(§§pop(),result.length - 1));
                                                      while(true)
                                                      {
                                                         result = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop21;
                                                         }
                                                         continue loop21;
                                                      }
                                                   }
                                                   continue loop21;
                                                }
                                             }
                                             addr368:
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr368);
                              }
                              else
                              {
                                 addr140:
                              }
                              if(!(_loc8_ && subStrings))
                              {
                                 continue;
                              }
                              §§goto(addr366);
                           }
                        }
                        §§goto(addr348);
                     }
                     else if(_loc7_)
                     {
                        subStrings.push(result.substr(0,3));
                        if(!(_loc8_ && amt))
                        {
                           if(_loc7_ || this)
                           {
                              §§push(result);
                              if(_loc7_)
                              {
                                 §§push(3);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop().substr(§§pop()));
                                    if(!(_loc8_ && subStrings))
                                    {
                                       result = §§pop();
                                       §§goto(addr140);
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr351);
                           }
                           §§goto(addr366);
                        }
                        §§goto(addr348);
                     }
                     §§goto(addr368);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr250);
      }
      
      private function §-!5§(movieClip:§=D§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var label:* = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(_loc6_)
                  {
                     while(!_loc5_)
                     {
                        addr99:
                        if(!(_loc6_ || movieClip))
                        {
                           continue;
                        }
                        §§push(hideWhenDone);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              loop17:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    loop18:
                                    while(!(_loc5_ && hideWhenDone))
                                    {
                                       movieClip.setVisibility(false);
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             movieClip.§?§ = false;
                                             addr111:
                                             addr137:
                                             while(true)
                                             {
                                                if(_loc6_ || hideWhenDone)
                                                {
                                                   break loop18;
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                continue loop14;
                                                §§goto(addr111);
                                             }
                                          }
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(movieClip.§+h§(deltaTime));
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr147:
                                             while(true)
                                             {
                                                label = §§pop();
                                                addr148:
                                                loop11:
                                                while(!_loc5_)
                                                {
                                                   if(!(_loc5_ && movieClip))
                                                   {
                                                      break loop17;
                                                   }
                                                   addr176:
                                                   while(true)
                                                   {
                                                      break loop11;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             addr128:
                                             if(_loc6_ || movieClip)
                                             {
                                                if(§§pop() == "End")
                                                {
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr27);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr99);
                                       }
                                       §§goto(addr111);
                                       §§goto(addr77);
                                    }
                                    addr77:
                                    §§goto(addr27);
                                 }
                                 break;
                                 if(_loc5_ && hideWhenDone)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr148);
                              }
                              while(true)
                              {
                                 §§push(label);
                                 if(_loc6_ || deltaTime)
                                 {
                                    §§goto(addr128);
                                 }
                                 break;
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr27);
                        }
                        while(true)
                        {
                           if(§§pop() == true)
                           {
                              §§goto(addr176);
                           }
                           addr27:
                           return;
                           §§goto(addr106);
                        }
                        addr106:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr174);
         }
      }
      
      private function dynamic() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         if(_loc6_)
         {
            if(_loc6_ || scoreObject)
            {
            }
         }
         loop0:
         for each(scoreObject in this.§`!+§.data)
         {
            if(_loc6_ || scoreObject)
            {
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
            while(true)
            {
               while(!_loc6_)
               {
               }
               if(_loc6_ || scoreObject)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
               §§goto(addr94);
            }
            pic = new ProfilePicture(scoreObject.userId,"",false,§5!D§.NORMAL);
            if(!_loc5_)
            {
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     pic.dispose();
                     while(!(_loc6_ || scoreObject))
                     {
                     }
                     if(!_loc6_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(false)
                        {
                           continue loop7;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr140);
         }
         if(!_loc6_)
         {
         }
      }
   }
}
