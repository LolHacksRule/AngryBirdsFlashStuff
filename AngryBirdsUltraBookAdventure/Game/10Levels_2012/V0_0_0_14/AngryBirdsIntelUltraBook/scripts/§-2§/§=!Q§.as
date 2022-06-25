package §-2§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §'H§.§9!f§;
   import §+k§.§%!2§;
   import §+k§.§>t§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §4[§.§-w§;
   import §4[§.§?O§;
   import §5i§.§4!]§;
   import §;!q§.§"r§;
   import §;!q§.§%t§;
   import §;!q§.§=t§;
   import §=R§.§&W§;
   import §`M§.§&!G§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §=!Q§
   {
       
      
      private var §`-§:§ C§;
      
      private var §<§:§>t§;
      
      private var §#6§:§4F§;
      
      private var §9!?§:§4F§;
      
      private var §&v§:Number;
      
      private var §>^§:Number;
      
      private var §5F§:§=t§;
      
      private var §=!X§:§"r§;
      
      private var §+e§:Boolean = false;
      
      private var §9R§:Boolean;
      
      private var §;s§:§-w§;
      
      private var §1t§:int;
      
      private var §@#§:§-w§;
      
      private var §8_§:int = -1;
      
      private var §@!_§:Array;
      
      private var §1M§:String;
      
      private var §-`§:§-w§;
      
      private var §1X§:§9!#§;
      
      private var §#9§:§9!#§;
      
      private var §3!3§:§&W§;
      
      private var §-!J§:§&!G§;
      
      private var §^>§:§&!G§;
      
      private var §+!B§:§&!G§;
      
      private var §>!Q§:§&!G§;
      
      private var §6P§:§&!G§;
      
      private var §?_§:§&!G§;
      
      private var §,>§:§3!@§;
      
      private var §+!u§:§3!@§;
      
      private var §%!q§:§3!@§;
      
      private var §3%§:§3!@§;
      
      private var §!!3§:§3!@§;
      
      private var §%!&§:§3!@§;
      
      public function §=!Q§(param1:§ C§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!_§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§`-§ = param1;
                  addr37:
                  if(!(_loc2_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            this.§3p§();
            loop3:
            while(true)
            {
               this.§&v§ = this.§#9§.x;
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop2;
                  }
                  continue loop3;
                  addr87:
                  this.§>^§ = this.§3!3§.y;
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr37);
               }
               continue loop2;
            }
         }
         §§goto(addr61);
      }
      
      private function §3p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#9§ = this.§`-§.getItemByName("Container_VsHero") as §9!#§;
         }
         loop0:
         while(true)
         {
            this.§3!3§ = this.§`-§.getItemByName("Container_VsEnemy") as §9!#§;
            loop1:
            while(true)
            {
               this.§1X§ = this.§`-§.getItemByName("Container_Vs") as §9!#§;
               loop2:
               while(true)
               {
                  this.§-!J§ = this.§`-§.getItemByName("MovieClip_VsAnimation") as §&!G§;
                  loop3:
                  while(true)
                  {
                     this.§^>§ = this.§`-§.getItemByName("MovieClip_Boom") as §&!G§;
                     loop4:
                     while(true)
                     {
                        this.§+!B§ = this.§`-§.getItemByName("MovieClip_VsProfilePicHero") as §&!G§;
                        while(true)
                        {
                           this.§>!Q§ = this.§`-§.getItemByName("MovieClip_VsProfilePicEnemy") as §&!G§;
                           while(_loc2_)
                           {
                              this.§6P§ = this.§`-§.getItemByName("MovieClip_CrownHero") as §&!G§;
                              loop7:
                              while(_loc2_)
                              {
                                 this.§?_§ = this.§`-§.getItemByName("MovieClip_CrownEnemy") as §&!G§;
                                 while(true)
                                 {
                                    this.§,>§ = this.§`-§.getItemByName("TextField_VsScore") as §3!@§;
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                             addr126:
                                          }
                                          this.§+!u§ = this.§`-§.getItemByName("TextField_VsScoreEnemy") as §3!@§;
                                          while(!_loc1_)
                                          {
                                             this.§%!q§ = this.§`-§.getItemByName("TextField_NameHero") as §3!@§;
                                             continue loop9;
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop1;
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop3;
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
      
      public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§#6§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr32:
                     this.§#6§.play();
                     if(_loc3_ || _loc1_)
                     {
                        addr40:
                        §§push(this.§9!?§);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              addr55:
                              if(_loc3_ || _loc2_)
                              {
                                 addr52:
                                 §§push(this.§9!?§);
                              }
                              var _loc1_:MovieClip = this.§`-§.getItemByName("PlayerNameMask").mClip;
                              §§push((AngryBirdsFP11.sUserProgress as §9!f§).userName);
                              if(_loc3_ || this)
                              {
                                 §§push(§§pop());
                              }
                              var _loc2_:* = §§pop();
                              if(_loc3_ || this)
                              {
                                 this.§0!G§(_loc2_,this.§%!q§,_loc1_);
                                 while(this.§-`§)
                                 {
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    addr138:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    this.§0!G§(this.§-`§.userName,this.§3%§,this.§`-§.getItemByName("EnemyNameMask").mClip);
                                    §§goto(addr138);
                                 }
                                 return;
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr55);
                        }
                        §§pop().play();
                     }
                  }
                  §§goto(addr55);
               }
               §§goto(addr40);
            }
            §§goto(addr32);
         }
         §§goto(addr52);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#6§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§9!?§);
                     while(§§pop())
                     {
                        while(_loc1_ || _loc1_)
                        {
                           §§push(this.§9!?§);
                           loop6:
                           while(true)
                           {
                              §§pop().pause();
                              addr71:
                              addr112:
                              while(!_loc2_)
                              {
                                 continue loop6;
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(this.§#6§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    §§pop().pause();
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        while(!_loc2_)
                        {
                           continue loop3;
                        }
                        while(true)
                        {
                           §§goto(addr111);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr109);
            }
         }
         §§goto(addr112);
      }
      
      public function levelStarted(param1:§>t§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1M§ = param2;
            loop0:
            while(true)
            {
               this.§^!v§();
               loop1:
               while(true)
               {
                  this.§5!q§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§3!3§);
                     loop3:
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        loop4:
                        while(true)
                        {
                           this.§1X§.setVisibility(false);
                           loop5:
                           while(true)
                           {
                              this.§<§ = param1;
                              loop6:
                              while(true)
                              {
                                 this.§+e§ = false;
                                 loop7:
                                 for(; !_loc4_; while(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                    §§goto(addr82);
                                 })
                                 {
                                    this.§@#§ = null;
                                    loop8:
                                    while(true)
                                    {
                                       this.§8_§ = -1;
                                       while(true)
                                       {
                                          this.§@!_§ = [];
                                          loop17:
                                          while(!(_loc4_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§#9§.x = this.§&v§;
                                                continue loop7;
                                             }
                                             continue loop6;
                                             addr61:
                                             if(!(_loc4_ && param2))
                                             {
                                                this.§#6§ = null;
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      else
                                                      {
                                                         addr82:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            addr91:
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  this.§9!?§ = null;
                                                                  continue loop20;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr190:
                                                            while(true)
                                                            {
                                                               §§push(this.§-!J§);
                                                               addr176:
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setVisibility(§§pop());
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               §§goto(addr91);
                                                            }
                                                            continue loop20;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§1t§ = -1;
                                                            break loop20;
                                                         }
                                                         addr157:
                                                         addr82:
                                                      }
                                                   }
                                                   continue loop17;
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        §§push(this.§3!3§);
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        §§pop().y = this.§>^§;
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc7_ && _loc3_))
         {
            this.§0!]§();
         }
         var _loc1_:MovieClip = this.§`-§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §9!f§).userName);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            §§push(this.§0!G§(_loc2_,this.§%!q§,_loc1_));
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               addr67:
               this.§@#§ = null;
            }
            §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§1M§));
            if(_loc6_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               this.§;s§ = this.§<§.§=u§();
               loop0:
               while(true)
               {
                  §§push(this.§;s§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           this.§ !8§(this.§;s§);
                        }
                        continue;
                     }
                     §§push(1);
                     loop14:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop15:
                        while(true)
                        {
                           §§push(this.§3!3§);
                           if(_loc6_)
                           {
                              §§push(false);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§pop().setVisibility(§§pop());
                                 loop13:
                                 while(true)
                                 {
                                    §§push(this.§-!J§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(false);
                                       if(!(_loc7_ && this))
                                       {
                                          addr198:
                                          §§pop().setVisibility(§§pop());
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc7_ && _loc2_)
                                             {
                                                continue loop13;
                                             }
                                             if(!_loc7_)
                                             {
                                                this.§#9§.x = this.§3!3§.x;
                                                addr170:
                                                if(_loc6_)
                                                {
                                                   addr172:
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr235:
                                                      while(true)
                                                      {
                                                         this.§!!3§.setText(_loc3_.toString());
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc7_ && _loc2_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(AngryBirdsFP11.sUserProgress);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 (§§pop() as §9!f§).§%!§(LevelManager.§^!F§,_loc3_);
                                                                              }
                                                                              addr299:
                                                                              §§push(§§pop().getEagleScoreForLevel(this.§1M§));
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 addr309:
                                                                                 §§push(int(§§pop()));
                                                                                 break;
                                                                              }
                                                                              break;
                                                                              addr123:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr170);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr297:
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         var _loc5_:* = §§pop();
                                                         if(!(_loc7_ && _loc1_))
                                                         {
                                                            §§push(this.§6P§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr523:
                                                               while(true)
                                                               {
                                                                  §§push(3);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc7_ && _loc1_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr588:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr584:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr585:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               addr586:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr584:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr519:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr505:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(3);
                                                                                                                                    addr506:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr518:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr511:
                                                                                                                                       loop48:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          loop49:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr461:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(_loc6_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc7_ && _loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop35;
                                                                                                                                                   }
                                                                                                                                                   if(_loc7_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr436:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§6P§);
                                                                                                                                                            if(!(_loc7_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            while(!(_loc7_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§pop().§#!q§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                                               loop42:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop39:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§1X§.setVisibility(true);
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop39;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop48;
                                                                                                                                                                           addr393:
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc7_ && _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        this.§+e§ = true;
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop49;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr519);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop42;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr585);
                                                                                                                                                            addr442:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr442);
                                                                                                                                                            §§push(this.§6P§);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop18;
                                                                                                                                                      addr436:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr485:
                                                                                                                                                while(!(_loc7_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         continue loop49;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                continue loop48;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr588:
                                                                                                   }
                                                                                                   §§goto(addr588);
                                                                                                }
                                                                                                addr581:
                                                                                             }
                                                                                             §§goto(addr584);
                                                                                          }
                                                                                          addr572:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr588);
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                 }
                                                                              }
                                                                              §§goto(addr584);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        §§goto(addr581);
                                                                     }
                                                                     §§goto(addr584);
                                                                  }
                                                                  §§goto(addr572);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr511);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                      addr149:
                                                      addr235:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§3!3§);
                                                      addr239:
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         addr240:
                                                         while(true)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            addr241:
                                                            while(true)
                                                            {
                                                               §§push(this.§-!J§);
                                                               break loop12;
                                                            }
                                                         }
                                                         continue loop15;
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   addr264:
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr241);
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                             continue loop13;
                                          }
                                          addr233:
                                       }
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          §§goto(addr235);
                                       }
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr239);
                        }
                     }
                  }
               }
            }
            §§goto(addr123);
         }
         §§goto(addr67);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(Boolean(this.§<§.§6j§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr182:
                        while(true)
                        {
                           §§push(§4!]§.§8C§.objects.mSardineCanAdded);
                           addr162:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr181:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§+e§);
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.initialize();
                                                   addr102:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         this.§1X§.setVisibility(false);
                                                         addr140:
                                                         break;
                                                      }
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§9R§);
                                                            addr128:
                                                            while(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               continue loop0;
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr174:
                                                      }
                                                   }
                                                   addr154:
                                                   if(_loc2_)
                                                   {
                                                      break loop11;
                                                   }
                                                   §§push(true);
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      break loop9;
                                                   }
                                                   addr55:
                                                   §§goto(addr128);
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(this.§@#§ == null);
                                                      if(_loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr32:
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr174);
                                                            §§goto(addr32);
                                                         }
                                                         addr173:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr128);
                                                }
                                             }
                                             while(true)
                                             {
                                                this.updateAnimations(param1);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§goto(addr55);
                                                }
                                                §§goto(addr102);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr182);
                                 }
                              }
                              §§goto(addr140);
                           }
                           return §§pop();
                           addr138:
                        }
                        §§goto(addr173);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            if(this.§1t§ != param1)
            {
               while(true)
               {
                  this.§1t§ = param1;
                  loop1:
                  while(true)
                  {
                     this.§,>§.setText(this.§[-§(this.§1t§));
                     loop2:
                     while(true)
                     {
                        if(!this.§;s§)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr311:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(this.§<§.§6j§));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          continue loop6;
                                       }
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this.§9R§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      addr226:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr301:
                                                            while(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§4!]§.§8C§.objects.mSardineCanAdded);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop11;
                                                                  }
                                                                  break loop11;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr159:
                                                      §§push(Boolean(this.§;s§));
                                                      if(Boolean(this.§;s§))
                                                      {
                                                         addr165:
                                                         §§pop();
                                                         addr166:
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(this.§1t§);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(this.§;s§.§'!j§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        addr128:
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              addr63:
                                                                              §§push(this.§@!_§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(§§pop().length <= 5)
                                                                                    {
                                                                                       addr73:
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          addr85:
                                                                                          §§push(this.§@!_§.length > 0);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr91:
                                                                                                   §§pop();
                                                                                                   addr92:
                                                                                                   if(_loc6_ || param3)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(!this.§@#§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && param2))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr43);
                                                                                                                  }
                                                                                                                  §§goto(addr159);
                                                                                                               }
                                                                                                               §§goto(addr128);
                                                                                                            }
                                                                                                            §§goto(addr85);
                                                                                                         }
                                                                                                         §§goto(addr91);
                                                                                                      }
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   addr158:
                                                                                                   §§goto(addr63);
                                                                                                }
                                                                                                addr43:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && param3))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            this.§ !E§();
                                                                                                            addr58:
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr73);
                                                                                                               }
                                                                                                               §§goto(addr22);
                                                                                                            }
                                                                                                            §§goto(addr92);
                                                                                                         }
                                                                                                         addr191:
                                                                                                         addr193:
                                                                                                         addr190:
                                                                                                         addr192:
                                                                                                         if((_loc4_ = this.§<§.data.indexOf(this.§;s§) - 1) >= 0)
                                                                                                         {
                                                                                                            addr194:
                                                                                                            this.§;s§ = this.§<§.data[_loc4_];
                                                                                                            §§goto(addr159);
                                                                                                            addr201:
                                                                                                         }
                                                                                                         this.§;s§ = null;
                                                                                                         §§goto(addr159);
                                                                                                         addr210:
                                                                                                      }
                                                                                                      §§goto(addr166);
                                                                                                   }
                                                                                                   §§goto(addr58);
                                                                                                }
                                                                                                addr22:
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr159);
                                                                                          }
                                                                                          §§goto(addr165);
                                                                                       }
                                                                                       §§goto(addr201);
                                                                                    }
                                                                                    §§push(this.§@!_§);
                                                                                 }
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    §§pop().pop();
                                                                                    §§goto(addr158);
                                                                                 }
                                                                                 addr207:
                                                                                 §§pop().unshift(this.§;s§);
                                                                                 §§goto(addr210);
                                                                              }
                                                                              §§goto(addr85);
                                                                           }
                                                                           §§goto(addr158);
                                                                        }
                                                                        §§goto(addr207);
                                                                        §§push(this.§@!_§);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      addr300:
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr226);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                    continue loop5;
                                    addr274:
                                 }
                                 §§goto(addr300);
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr303);
      }
      
      private function § !8§(param1:§-w§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?_§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§0v§ <= 3);
               while(true)
               {
                  §§push(param1.§0v§ > 0);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(param1.§0v§ <= 3);
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue loop0;
                        }
                        loop7:
                        while(true)
                        {
                           this.§%!&§.setText(param1.§0v§.toString());
                           loop8:
                           while(true)
                           {
                              this.§+!u§.setText(this.§[-§(param1.§'!j§));
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                    addr55:
                                 }
                                 continue loop8;
                              }
                              addr122:
                              while(true)
                              {
                                 continue loop7;
                                 §§goto(addr55);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&!G§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in [this.§-!J§,this.§^>§,this.§-!J§])
         {
            if(_loc6_ || _loc3_)
            {
               this.§9F§(_loc2_,param1,true);
            }
         }
      }
      
      private function §]!u§(param1:§-w§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§%!2§.§&B§(param1.userId));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(!(_loc4_ && _loc2_))
         {
            this.§-`§ = param1;
            while(true)
            {
               this.§^!v§();
               addr119:
               while(true)
               {
                  this.§5F§ = new §"r§(_loc3_,"",false,§%t§.NORMAL);
               }
            }
            addr123:
         }
         loop2:
         while(true)
         {
            this.§?!8§(this.§>!Q§,this.§5F§);
            while(!(_loc4_ && _loc3_))
            {
               this.§0!G§(param1.userName,this.§3%§,this.§`-§.getItemByName("EnemyNameMask").mClip);
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     break loop2;
                  }
                  §§goto(addr123);
               }
               §§goto(addr119);
            }
         }
      }
      
      private function §0!G§(param1:String, param2:§3!@§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1);
            do
            {
               if(§§pop().length <= 6)
               {
                  param2.mClip.mask = null;
                  do
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           param3.visible = false;
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              addr93:
                              while(true)
                              {
                                 param2.mClip.mask = param3;
                                 addr97:
                                 while(true)
                                 {
                                    param3.visible = true;
                                 }
                              }
                           }
                           continue;
                        }
                        §§goto(addr97);
                     }
                     while(true)
                     {
                        §§goto(addr31);
                     }
                  }
                  while(_loc5_ && this);
                  
                  continue;
               }
               §§goto(addr93);
            }
            while(§§push(param1), !_loc4_);
            
            return §§pop();
         }
         §§goto(addr97);
      }
      
      private function §?!8§(param1:§&!G§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(!_loc3_)
               {
                  break;
               }
               if(_loc3_)
               {
                  param1.mClip.addChild(param2);
                  break;
               }
            }
            else
            {
               param1.mClip.removeChildAt(0);
            }
         }
      }
      
      private function §3A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §9!f§).avatarString);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §9!f§).§0!V§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.§5!q§();
         }
         while(true)
         {
            this.§=!X§ = new §"r§(_loc2_,"",false,§%t§.NORMAL);
            while(!(_loc4_ && this))
            {
               this.§?!8§(this.§+!B§,this.§=!X§);
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §;!G§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3A§();
         }
      }
      
      private function §^!v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§5F§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr80:
                     this.§5F§.dispose();
                  }
                  do
                  {
                     this.§5F§ = null;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  addr60:
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr60);
      }
      
      private function §5!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§=!X§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr59:
                     this.§=!X§.dispose();
                  }
                  do
                  {
                     this.§=!X§ = null;
                  }
                  while(_loc2_ && this);
                  
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function set §;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9R§ = param1;
         }
         do
         {
            §§push(this.§1X§);
            §§push(this.§9R§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(!_loc3_);
         
      }
      
      private function § !E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@#§ = this.§@!_§.pop();
            while(true)
            {
               this.§9!?§ = §5+§.§^Z§.§=!a§(this.§#9§.mClip,{"x":this.§&v§ + 15},{"x":this.§&v§},0.5,§5+§.§>!u§);
               loop1:
               for(; _loc2_ || this; while(_loc2_ || _loc2_)
               {
                  §§goto(addr79);
               })
               {
                  §§push(this.§9!?§);
                  while(true)
                  {
                     §§pop().onComplete = this.§8!U§;
                     continue loop1;
                     §§goto(addr79);
                  }
               }
            }
         }
         addr79:
         while(true)
         {
            §§push(this.§9!?§);
            if(!(_loc1_ && this))
            {
               §§pop().play();
               do
               {
                  §6!H§.playSound("NextToBeat_Sound","ChannelPowerups");
               }
               while(_loc1_ && _loc2_);
               
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      private function §8!U§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || _loc3_)
         {
            this.§9!?§ = null;
            if(_loc3_ || _loc2_)
            {
               §§push(this.§^>§);
               loop0:
               while(true)
               {
                  §§pop().§#!q§("Start");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§^>§);
                        loop3:
                        while(true)
                        {
                           §§push(true);
                           loop4:
                           while(true)
                           {
                              §§pop().§<!P§ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§^>§);
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(true);
                                       if(!_loc4_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   §§push(this.§@!_§);
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop().length > 0)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr93:
                                                      var _loc1_:§-w§ = this.§;s§;
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§@#§.§0v§ == 1);
                                                         loop6:
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
                                                                     addr468:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_ == null);
                                                                     }
                                                                  }
                                                                  addr467:
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§9!?§ = §5+§.§^Z§.§=!a§(this.§#9§.mClip,{"x":this.§&v§},null,0.5);
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9!?§);
                                                                           while(!_loc4_)
                                                                           {
                                                                              §§pop().onComplete = null;
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§9!?§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§pop().play();
                                                                                    while(true)
                                                                                    {
                                                                                       this.§ !8§(_loc1_);
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr355:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr412:
                                                                                    §§pop().play();
                                                                                    do
                                                                                    {
                                                                                       this.§6P§.§#!q§("Gold");
                                                                                       this.§!!3§.setText("1");
                                                                                    }
                                                                                    while(_loc4_ && _loc1_);
                                                                                    
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop10;
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§pop().onComplete = this.§3T§;
                                                                           §§goto(addr420);
                                                                        }
                                                                     }
                                                                     break;
                                                                     while(_loc3_ || _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr293);
                                                                        §§goto(addr215);
                                                                     }
                                                                  }
                                                                  this.§3!3§.setVisibility(false);
                                                                  §§goto(addr459);
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr93);
                                             §§push(§§pop()[this.§@!_§.length - 1]);
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr83);
            §§push(this.§@!_§);
         }
         §§goto(addr48);
      }
      
      private function §"B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§#6§ = null;
         }
         loop0:
         while(true)
         {
            this.§@#§ = null;
            do
            {
               if(_loc1_ || this)
               {
                  if(this.§@!_§.length <= 0)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!(_loc2_ && this))
            {
               this.§ !E§();
            }, _loc2_ && _loc2_);
            
            return;
         }
      }
      
      private function §3T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9!?§ = null;
         }
         do
         {
            this.§@#§ = null;
         }
         while(_loc2_);
         
      }
      
      private function §[-§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc7_ || _loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               loop1:
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  addr115:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop().slice(_loc2_.length % 3));
                     }
                     _loc2_ = §§pop();
                     if(_loc7_ || this)
                     {
                        if(!(_loc8_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  break loop0;
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc8_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!_loc8_)
                        {
                           var _loc5_:int = 0;
                           if(!(_loc8_ && param1))
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc7_)
                              {
                                 loop4:
                                 while(§§hasnext(_loc6_,_loc5_))
                                 {
                                    §§push(§§nextvalue(_loc5_,_loc6_));
                                    if(!_loc8_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop() + (_loc4_ + ","));
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr176);
                        }
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        if(!_loc8_)
                        {
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              §§push(3);
                              if(_loc7_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc7_)
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
                                    §§goto(addr179);
                                 }
                                 break;
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr179);
                  }
                  break;
               }
               addr183:
               §§push(§§pop().substr(§§pop(),_loc2_.length - 1));
               if(!(_loc8_ && param1))
               {
                  §§goto(addr179);
               }
               addr176:
               if(!_loc8_)
               {
                  addr179:
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     break loop3;
                  }
                  _loc2_ = §§pop();
               }
               return _loc2_;
            }
         }
         §§goto(addr115);
      }
      
      private function §9F§(param1:§&!G§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_)
         {
            §§push(param1.§<!P§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  if(_loc5_ || this)
                  {
                     while(true)
                     {
                        §§push(param1.§,!C§(param2));
                        if(_loc5_ || param3)
                        {
                           §§push(§§pop());
                           if(_loc5_ || this)
                           {
                              §§push(_loc4_ = §§pop());
                           }
                        }
                        if(§§pop() != "End")
                        {
                           §§goto(addr22);
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     param1.§<!P§ = false;
                     continue loop0;
                     addr38:
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     param1.setVisibility(false);
                     if(_loc6_ && param2)
                     {
                        continue loop0;
                     }
                     §§goto(addr22);
                  }
               }
               addr22:
               return;
            }
         }
         §§goto(addr87);
      }
      
      private function §0!]§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§?O§ = null;
         var _loc2_:§=t§ = null;
         for each(_loc1_ in this.§<§.data)
         {
            if(_loc6_ || this)
            {
               if(!(_loc1_ is §-w§))
               {
                  continue;
               }
            }
            _loc2_ = new §=t§(_loc1_.userId,"",false,§%t§.NORMAL);
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
