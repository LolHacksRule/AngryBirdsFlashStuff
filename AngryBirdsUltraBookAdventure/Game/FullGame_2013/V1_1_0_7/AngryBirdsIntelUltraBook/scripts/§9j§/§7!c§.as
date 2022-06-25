package §9j§
{
   import §"!i§.LevelManager;
   import §,@§.§'!6§;
   import §,@§.§8@§;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§^! §;
   import §4H§.§4!R§;
   import §4H§.§9?§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import §^`§.§%j§;
   import §^`§.§,!K§;
   import §^`§.§14§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7!c§
   {
       
      
      private var §'!Q§:§&!G§;
      
      private var §[!+§:§'!6§;
      
      private var §#n§:§^v§;
      
      private var §0!b§:§^v§;
      
      private var §@]§:Number;
      
      private var §7!A§:Number;
      
      private var §'7§:§,!K§;
      
      private var §8D§:§%j§;
      
      private var §@0§:Boolean = false;
      
      private var §<5§:Boolean;
      
      private var §!!O§:§9?§;
      
      private var §`!i§:int;
      
      private var §`e§:§9?§;
      
      private var §6!m§:int = -1;
      
      private var §;!b§:Array;
      
      private var §9!W§:String;
      
      private var §8!U§:§9?§;
      
      private var §'!=§:§^! §;
      
      private var §'b§:§^! §;
      
      private var §#"§:§7!>§;
      
      private var §"!C§:§7!p§;
      
      private var §`!&§:§7!p§;
      
      private var §"!a§:§7!p§;
      
      private var §9n§:§7!p§;
      
      private var §=8§:§7!p§;
      
      private var §=l§:§7!p§;
      
      private var §!`§:§54§;
      
      private var §2o§:§54§;
      
      private var §^!r§:§54§;
      
      private var §#P§:§54§;
      
      private var §^N§:§54§;
      
      private var §=^§:§54§;
      
      public function §7!c§(param1:§&!G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!b§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§'!Q§ = param1;
                  while(!_loc3_)
                  {
                     this.§3$§();
                     while(_loc2_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      private function §3$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'b§ = this.§'!Q§.getItemByName("Container_VsHero") as §^! §;
            loop0:
            while(true)
            {
               this.§#"§ = this.§'!Q§.getItemByName("Container_VsEnemy") as §^! §;
               loop1:
               while(true)
               {
                  this.§'!=§ = this.§'!Q§.getItemByName("Container_Vs") as §^! §;
                  loop2:
                  while(true)
                  {
                     this.§"!C§ = this.§'!Q§.getItemByName("MovieClip_VsAnimation") as §7!p§;
                     loop3:
                     while(true)
                     {
                        this.§`!&§ = this.§'!Q§.getItemByName("MovieClip_Boom") as §7!p§;
                        loop4:
                        while(true)
                        {
                           this.§"!a§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicHero") as §7!p§;
                           loop5:
                           while(true)
                           {
                              this.§9n§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicEnemy") as §7!p§;
                              while(true)
                              {
                                 this.§=8§ = this.§'!Q§.getItemByName("MovieClip_CrownHero") as §7!p§;
                                 while(true)
                                 {
                                    this.§=l§ = this.§'!Q§.getItemByName("MovieClip_CrownEnemy") as §7!p§;
                                    continue loop2;
                                    addr141:
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       this.§2o§ = this.§'!Q§.getItemByName("TextField_VsScoreEnemy") as §54§;
                                       continue loop3;
                                    }
                                 }
                                 loop13:
                                 while(_loc1_ || this)
                                 {
                                    if(_loc1_)
                                    {
                                       this.§=^§ = this.§'!Q§.getItemByName("TextField_VsPositionEnemy") as §54§;
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       addr34:
                                       if(!(_loc2_ && this))
                                       {
                                          addr41:
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(!(_loc1_ || this))
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr141);
                                             }
                                             addr98:
                                          }
                                          while(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             this.§#P§ = this.§'!Q§.getItemByName("TextField_NameEnemy") as §54§;
                                             while(true)
                                             {
                                                this.§^N§ = this.§'!Q§.getItemByName("TextField_VsPositionHero") as §54§;
                                                continue loop13;
                                                §§goto(addr34);
                                             }
                                             §§goto(addr41);
                                          }
                                          continue loop2;
                                          return;
                                       }
                                       §§goto(addr88);
                                       continue;
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
         }
         §§goto(addr88);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§#n§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr33:
                     this.§#n§.play();
                     if(!_loc3_)
                     {
                        addr36:
                        §§push(this.§0!b§);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              addr46:
                              if(!_loc3_)
                              {
                                 addr43:
                                 §§push(this.§0!b§);
                              }
                              var _loc1_:MovieClip = this.§'!Q§.getItemByName("PlayerNameMask").mClip;
                              §§push((AngryBirdsFP11.sUserProgress as §#!6§).userName);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              var _loc2_:* = §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 this.§6!$§(_loc2_,this.§^!r§,_loc1_);
                                 while(this.§8!U§)
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       this.§6!$§(this.§8!U§.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
                                    }
                                    if(_loc4_ || this)
                                    {
                                       addr124:
                                       break;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr46);
                        }
                        §§pop().play();
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr43);
               }
               §§goto(addr36);
            }
            §§goto(addr33);
         }
         §§goto(addr46);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§#n§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#n§);
                     addr122:
                     loop5:
                     while(true)
                     {
                        §§pop().pause();
                        addr123:
                        while(true)
                        {
                           §§push(this.§#n§);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                        addr109:
                        §§pop().§^!5§ = false;
                     }
                  }
                  addr120:
               }
               loop1:
               while(true)
               {
                  §§push(this.§0!b§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(this.§0!b§);
                           addr81:
                           while(true)
                           {
                              §§pop().pause();
                              while(true)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§push(this.§0!b§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§pop().§^!5§ = false;
                                       if(_loc2_ || this)
                                       {
                                          if(!(_loc1_ && this))
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr123);
                              }
                           }
                        }
                        addr79:
                     }
                     break;
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr122);
         }
         §§goto(addr79);
      }
      
      public function levelStarted(param1:§'!6§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!W§ = param2;
            loop0:
            while(true)
            {
               this.§&S§();
               while(true)
               {
                  this.§7!z§();
                  while(true)
                  {
                     §§push(this.§#"§);
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        addr224:
                        while(true)
                        {
                           this.§'!=§.setVisibility(false);
                           continue loop0;
                        }
                        addr87:
                        §§push(this.§#"§);
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§pop().y = this.§7!A§;
                        loop20:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                 }
                                 this.§0!b§ = null;
                                 loop21:
                                 while(!_loc4_)
                                 {
                                    this.§#n§ = null;
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop21;
                                    }
                                    continue loop20;
                                 }
                                 while(true)
                                 {
                                    this.§'b§.x = this.§@]§;
                                    §§goto(addr80);
                                 }
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr224);
                     }
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc6_)
         {
            this.§@!9§();
         }
         var _loc1_:MovieClip = this.§'!Q§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §#!6§).userName);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§6!$§(_loc2_,this.§^!r§,_loc1_));
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!(_loc7_ && _loc2_))
            {
               addr62:
               this.§`e§ = null;
            }
            §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§9!W§));
            if(!(_loc7_ && _loc1_))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc7_)
            {
               this.§!!O§ = this.§[!+§.§=!0§();
            }
            while(true)
            {
               §§push(this.§!!O§);
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     if(_loc6_ || _loc3_)
                     {
                        _loc3_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§#"§);
                           if(_loc6_)
                           {
                              §§push(false);
                              if(_loc6_ || _loc3_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§"!C§);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(false);
                                       if(_loc6_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                this.§'b§.x = this.§#"§.x;
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr290);
                  }
                  §§goto(addr249);
                  addr260:
                  §§push(this.§!!O§);
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(int(§§pop().§1<§ + 1));
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr244);
                  }
                  §§goto(addr290);
               }
               while(_loc6_ || this)
               {
                  §§goto(addr260);
               }
            }
         }
         §§goto(addr62);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(this.§[!+§.§6;§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
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
                                                §§push(this.§<5§);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr70:
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               this.initialize();
                                                               addr99:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     if(!(_loc2_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.updateAnimations(param1);
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        if(_loc2_ || param1)
                                                                        {
                                                                           §§push(this.§`e§ == null);
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              while(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr70);
                                                                              }
                                                                              addr116:
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop4;
                                                                              addr63:
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr131:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr63);
                                                                        §§goto(addr131);
                                                                     }
                                                                  }
                                                                  addr168:
                                                                  §§goto(addr116);
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr97:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr99);
                                                   }
                                                   §§goto(addr39);
                                                }
                                                addr164:
                                                this.§'!=§.setVisibility(false);
                                                §§goto(addr168);
                                             }
                                          }
                                          addr182:
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr60);
                                          }
                                          §§goto(addr164);
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr177:
                           }
                           §§goto(addr182);
                        }
                     }
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            if(this.§`!i§ != param1)
            {
               while(true)
               {
                  this.§`!i§ = param1;
                  loop1:
                  while(!_loc5_)
                  {
                     this.§!`§.setText(this.§4!1§(this.§`!i§));
                     loop2:
                     while(true)
                     {
                        if(this.§!!O§)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(this.§[!+§.§6;§));
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr297:
                                          while(true)
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(!(_loc6_ || param3))
                                             {
                                                §§goto(addr333);
                                             }
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr268:
                                                while(!(_loc5_ && this))
                                                {
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr296:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ && param3)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§pop();
                                             loop12:
                                             while(_loc6_)
                                             {
                                                §§push(this.§<5§);
                                                if(!(_loc5_ && param2))
                                                {
                                                   continue loop11;
                                                }
                                                addr231:
                                                if(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc6_ || param3)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               return;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr197:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§!!O§));
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§`!i§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.§!!O§.§;!u§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§push(this.§;!b§);
                                                                                          break;
                                                                                       }
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§;!b§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop().length <= 5)
                                                                                                {
                                                                                                   loop23:
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§;!b§);
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§pop().pop();
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         addr136:
                                                                                                         §§push(§§pop().length > 0);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr94:
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ || param1))
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            if(!(_loc6_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                               addr154:
                                                                                                            }
                                                                                                            addr108:
                                                                                                            loop26:
                                                                                                            while(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               addr116:
                                                                                                               §§push(!this.§`e§);
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  while(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr108);
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        if(!(_loc6_ || this))
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        if(!(_loc6_ || param2))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        this.§ p§();
                                                                                                                     }
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break loop24;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                     §§goto(addr116);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr37:
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr189:
                                                                                                               this.§!!O§ = this.§[!+§.data[_loc4_];
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§push(int(this.§[!+§.data.indexOf(this.§!!O§) - 1));
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr186:
                                                                                                         §§push(_loc4_ = §§pop());
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(this.§;!b§);
                                                                                                §§goto(addr136);
                                                                                             }
                                                                                             §§goto(addr76);
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    §§pop().unshift(this.§!!O§);
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 addr130:
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           addr188:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              this.§!!O§ = null;
                                                                              §§goto(addr154);
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               §§goto(addr130);
                                                            }
                                                         }
                                                      }
                                                      addr235:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr296);
                                                   }
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr297);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                              }
                           }
                        }
                        addr333:
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr261);
      }
      
      private function §7!e§(param1:§9?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§=l§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§1<§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§1<§ > 0);
                  if(_loc2_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(param1.§1<§ <= 3);
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(!_loc3_)
                                    {
                                       §§push(this.§=l§);
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§pop().§>Z§(["Gold","Silver","Bronze"][param1.§1<§ - 1]);
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop1;
                                    addr89:
                                 }
                                 while(true)
                                 {
                                    this.§=^§.setText(param1.§1<§.toString());
                                    addr74:
                                    loop8:
                                    while(true)
                                    {
                                       this.§2o§.setText(this.§4!1§(param1.§;!u§));
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr89);
                                             }
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr129:
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr74);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!p§ = null;
         for each(_loc2_ in [this.§"!C§,this.§`!&§,this.§"!C§])
         {
            if(_loc6_ || param1)
            {
               this.§"y§(_loc2_,param1,true);
            }
         }
      }
      
      private function §3!X§(param1:§9?§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§8@§.§<!u§(param1.userId));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(!(_loc4_ && param1))
         {
            this.§8!U§ = param1;
            loop0:
            while(true)
            {
               this.§&S§();
               loop1:
               while(true)
               {
                  this.§'7§ = new §%j§(_loc3_,"",false,§14§.NORMAL);
                  loop2:
                  while(true)
                  {
                     this.§ !E§(this.§9n§,this.§'7§);
                     loop3:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           this.§6!$§(param1.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §6!$§(param1:String, param2:§54§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().length > 6)
               {
                  if(_loc5_)
                  {
                     param2.mClip.mask = param3;
                  }
                  loop1:
                  while(true)
                  {
                     param3.visible = true;
                     do
                     {
                        if(_loc5_)
                        {
                           do
                           {
                              param2.setText(param1);
                              if(_loc4_)
                              {
                                 continue;
                              }
                           }
                           while(_loc4_);
                           
                           continue;
                           addr32:
                        }
                        continue loop1;
                     }
                     while(_loc4_ && this);
                     
                     continue loop0;
                  }
               }
               else
               {
                  param2.mClip.mask = null;
               }
               while(true)
               {
                  param3.visible = false;
                  while(true)
                  {
                     §§goto(addr32);
                  }
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(param1);
            if(_loc5_ || param3)
            {
               break;
            }
            §§goto(addr89);
         }
         return §§pop();
      }
      
      private function § !E§(param1:§7!p§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc4_)
               {
                  param1.mClip.addChild(param2);
               }
               if(_loc4_ || param1)
               {
                  break;
               }
            }
            else
            {
               param1.mClip.removeChildAt(0);
            }
         }
      }
      
      private function §[!A§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push((AngryBirdsFP11.sUserProgress as §#!6§).avatarString);
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §#!6§).§ z§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc1_)
         {
            this.§7!z§();
            while(true)
            {
               this.§8D§ = new §%j§(_loc2_,"",false,§14§.NORMAL);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§ !E§(this.§"!a§,this.§8D§);
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr99);
      }
      
      private function § !p§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[!A§();
         }
      }
      
      private function §&S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'7§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr55:
                     this.§'7§.dispose();
                  }
                  do
                  {
                     this.§'7§ = null;
                  }
                  while(_loc1_ && _loc2_);
                  
                  addr45:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      private function §7!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§8D§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8D§);
                     addr75:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public function set §9"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<5§ = param1;
         }
         do
         {
            §§push(this.§'!=§);
            §§push(this.§<5§);
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(_loc2_ && this);
         
      }
      
      private function § p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`e§ = this.§;!b§.pop();
            while(true)
            {
               this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§@]§ + 15},{"x":this.§@]§},0.5,§`!G§.§<W§);
               loop1:
               while(_loc1_ || _loc2_)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§0!b§);
                     while(true)
                     {
                        §§pop().onComplete = this.§"!Q§;
                        while(true)
                        {
                           §§push(this.§0!b§);
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           §§pop().play();
                           while(_loc1_)
                           {
                              §-!Q§.§#3§("NextToBeat_Sound","ChannelPowerups");
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr108);
      }
      
      private function §"!Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc1_))
         {
            this.§0!b§ = null;
            loop0:
            while(true)
            {
               §§push(this.§`!&§);
               loop1:
               while(true)
               {
                  §§pop().§>Z§("Start");
                  while(true)
                  {
                     addr70:
                     loop3:
                     while(true)
                     {
                        §§push(this.§`!&§);
                        loop4:
                        while(true)
                        {
                           §§push(true);
                           while(true)
                           {
                              §§pop().§!!#§ = §§pop();
                              if(_loc4_ && this)
                              {
                                 break;
                              }
                              §§push(this.§`!&§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(true);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§pop().setVisibility(§§pop());
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       if(_loc4_ && _loc1_)
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           addr106:
                           var _loc1_:§9?§ = this.§;!b§[this.§;!b§.length - 1];
                           if(!_loc4_)
                           {
                              §§push(this.§`e§.§1<§ == 1);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr522:
                                       while(true)
                                       {
                                          §§pop();
                                          addr523:
                                          while(true)
                                          {
                                             §§push(_loc1_ == null);
                                          }
                                       }
                                       addr522:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§@]§},null,0.5);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§0!b§);
                                             loop10:
                                             while(true)
                                             {
                                                §§pop().onComplete = null;
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§0!b§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§pop().play();
                                                         loop12:
                                                         for(; !_loc4_; while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr333);
                                                               }
                                                               break;
                                                            }
                                                            continue loop12;
                                                         },§§goto(addr445))
                                                         {
                                                            this.§7!e§(_loc1_);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(int(_loc1_.§1<§ + 1));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  loop15:
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     §§push(this.§=8§);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_ <= 3);
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().setVisibility(§§pop());
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 §§push(3);
                                                                                 addr231:
                                                                                 continue loop7;
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr239:
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc3_ || _loc3_))
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr305:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                addr147:
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^N§);
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().setText(_loc2_.toString());
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                this.§#n§ = §`!G§.§[U§.§-]§(this.§#"§.mClip,{"y":this.§7!A§},{"y":-150},2,§`!G§.§<W§);
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   §§push(this.§#n§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().onComplete = this.§ 2§;
                                                                                                      addr177:
                                                                                                      §§goto(addr426);
                                                                                                   }
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          addr437:
                                                                                          addr439:
                                                                                          §§pop().setText("1");
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§=8§);
                                                                                             addr417:
                                                                                             addr443:
                                                                                             while(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                §§push(true);
                                                                                                break loop16;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr444:
                                                                                                addr445:
                                                                                                §§pop().§>Z§("Gold");
                                                                                                §§goto(addr437);
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop13;
                                                                                       addr268:
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                    §§goto(addr523);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop12;
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    addr323:
                                                                                 }
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr279:
                                                                        §§push(this.§=8§);
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push("Gold");
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§>Z§(null[_loc2_ - 1]);
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        §§goto(addr417);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        addr426:
                                                                        addr123:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc4_ && _loc1_)
                                                                              {
                                                                                 §§push(this.§0!b§);
                                                                                 break loop11;
                                                                              }
                                                                              addr459:
                                                                              continue loop28;
                                                                           }
                                                                           continue loop26;
                                                                        }
                                                                        while(!(_loc3_ || _loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§#"§.mClip.x},null,0.5);
                                                                                 break loop15;
                                                                              }
                                                                              §§goto(addr523);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§#"§.setVisibility(false);
                                                                              §§goto(addr500);
                                                                           }
                                                                           addr500:
                                                                        }
                                                                        return;
                                                                     }
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§0!b§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().onComplete = this.§`!§;
                                                                        §§goto(addr459);
                                                                        break loop11;
                                                                     }
                                                                     addr451:
                                                                     §§pop().play();
                                                                     break loop12;
                                                                     addr456:
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr443);
                                                         §§push(this.§=8§);
                                                      }
                                                      break;
                                                   }
                                                   continue loop10;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§goto(addr451);
                                                }
                                                §§goto(addr456);
                                             }
                                          }
                                       }
                                       §§goto(addr496);
                                    }
                                 }
                              }
                              §§goto(addr522);
                           }
                           §§goto(addr439);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(true)
            {
               §§push(this.§;!b§);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop().length > 0)
                  {
                     §§goto(addr106);
                  }
                  else
                  {
                     §§goto(addr106);
                     §§push(this.§!!O§);
                  }
               }
               break;
            }
            §§goto(addr70);
            §§goto(addr106);
         }
         §§goto(addr106);
      }
      
      private function § 2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#n§ = null;
            loop0:
            while(true)
            {
               this.§`e§ = null;
               while(this.§;!b§.length > 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  addr52:
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         this.§ p§();
         §§goto(addr52);
      }
      
      private function §`!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§0!b§ = null;
            do
            {
               this.§`e§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      private function §4!1§(param1:int) : String
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
            while(§§pop().length % 3 > 0)
            {
               if(_loc7_)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(_loc8_ && param1)
                  {
                     break;
                  }
                  _loc2_ = §§pop();
                  if(!_loc8_)
                  {
                     addr107:
                     break loop0;
                  }
               }
            }
            loop2:
            while(true)
            {
               loop3:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc8_)
                  {
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc7_)
                           {
                              var _loc5_:int = 0;
                              if(_loc7_)
                              {
                                 var _loc6_:* = _loc3_;
                                 if(_loc7_)
                                 {
                                    loop5:
                                    while(§§hasnext(_loc6_,_loc5_))
                                    {
                                       §§push(§§nextvalue(_loc5_,_loc6_));
                                       if(_loc7_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + (_loc4_ + ","));
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop5;
                                       }
                                    }
                                    addr176:
                                    if(!_loc8_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc8_)
                                       {
                                          addr182:
                                          §§push(§§pop().substr(0,_loc2_.length - 1));
                                          if(!(_loc8_ && this))
                                          {
                                             break loop3;
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    break;
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr176);
                           }
                           break;
                        }
                        _loc3_.push(_loc2_.substr(0,3));
                        if(_loc7_ || this)
                        {
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              §§push(3);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc7_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr182);
                           }
                           §§goto(addr182);
                        }
                        break;
                        §§goto(addr182);
                     }
                     addr196:
                     addr197:
                     return §§pop();
                     §§push(_loc2_);
                  }
                  break;
               }
               _loc2_ = §§pop();
               §§goto(addr196);
            }
         }
         §§goto(addr107);
      }
      
      private function §"y§(param1:§7!p§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc5_ && param3))
         {
            §§push(param1.§!!#§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  if(_loc6_)
                  {
                     while(true)
                     {
                        §§push(param1.§@$§(param2));
                        if(_loc6_)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              addr79:
                              §§push(_loc4_ = §§pop());
                           }
                           if(§§pop() != "End")
                           {
                              §§goto(addr28);
                           }
                           if(_loc5_ && this)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              param1.§!!#§ = false;
                              continue loop0;
                           }
                        }
                        §§goto(addr79);
                     }
                     addr71:
                  }
                  §§goto(addr90);
               }
               addr28:
               return;
            }
         }
         §§goto(addr71);
      }
      
      private function §@!9§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§4!R§ = null;
         var _loc2_:§,!K§ = null;
         for each(_loc1_ in this.§[!+§.data)
         {
            if(_loc6_ || _loc2_)
            {
               if(!(_loc1_ is §9?§))
               {
                  continue;
               }
            }
            _loc2_ = new §,!K§(_loc1_.userId,"",false,§14§.NORMAL);
            if(!_loc5_)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
