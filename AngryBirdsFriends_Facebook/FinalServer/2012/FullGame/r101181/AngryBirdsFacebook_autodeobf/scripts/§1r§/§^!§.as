package §1r§
{
   import § " §.§+!p§;
   import § " §.§2!!§;
   import § " §.§3"2§;
   import §!!C§.§!H§;
   import §!!C§.§]!;§;
   import §#!e§.LevelManager;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §2!i§.§7'§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!>§.§#"1§;
   import §]!>§.§2!W§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^!§
   {
       
      
      private var §6w§:§7!A§;
      
      private var §3s§:§]!;§;
      
      private var §2U§:§"m§;
      
      private var §?P§:§"m§;
      
      private var §#'§:Number;
      
      private var §@K§:Number;
      
      private var §0!B§:§2!!§;
      
      private var §@q§:§3"2§;
      
      private var § !^§:Boolean = false;
      
      private var §1e§:Boolean;
      
      private var §"E§:§2!W§;
      
      private var §,!F§:int;
      
      private var §6!4§:§2!W§;
      
      private var §<!>§:int = -1;
      
      private var §&!D§:Array;
      
      private var §5"1§:String;
      
      private var §,!S§:§2!W§;
      
      private var §8M§:§08§;
      
      private var §<]§:§08§;
      
      private var §^G§:§7'§;
      
      private var §1K§:§7"-§;
      
      private var §#!u§:§7"-§;
      
      private var §,8§:§7"-§;
      
      private var §]=§:§7"-§;
      
      private var §9I§:§7"-§;
      
      private var §'!@§:§7"-§;
      
      private var §throw§:§-"E§;
      
      private var §=g§:§-"E§;
      
      private var §8;§:§-"E§;
      
      private var §9!l§:§-"E§;
      
      private var §5!"§:§-"E§;
      
      private var §[!1§:§-"E§;
      
      public function §^!§(param1:§7!A§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&!D§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§6w§ = param1;
                  loop4:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§@K§ = this.§^G§.y;
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              this.§"!j§();
                           }
                           return;
                        }
                        addr68:
                        addr91:
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§#'§ = this.§<]§.x;
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §"!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§<]§ = this.§6w§.getItemByName("Container_VsHero") as §08§;
         }
         loop0:
         while(true)
         {
            this.§^G§ = this.§6w§.getItemByName("Container_VsEnemy") as §08§;
            loop1:
            while(true)
            {
               this.§8M§ = this.§6w§.getItemByName("Container_Vs") as §08§;
               loop2:
               while(true)
               {
                  this.§1K§ = this.§6w§.getItemByName("MovieClip_VsAnimation") as §7"-§;
                  loop3:
                  while(true)
                  {
                     this.§#!u§ = this.§6w§.getItemByName("MovieClip_Boom") as §7"-§;
                     loop4:
                     do
                     {
                        this.§,8§ = this.§6w§.getItemByName("MovieClip_VsProfilePicHero") as §7"-§;
                        loop5:
                        while(true)
                        {
                           this.§]=§ = this.§6w§.getItemByName("MovieClip_VsProfilePicEnemy") as §7"-§;
                           loop6:
                           for(; _loc1_; while(!(_loc2_ && this))
                           {
                              continue loop5;
                              §§goto(addr44);
                           })
                           {
                              this.§9I§ = this.§6w§.getItemByName("MovieClip_CrownHero") as §7"-§;
                              while(_loc1_)
                              {
                                 this.§'!@§ = this.§6w§.getItemByName("MovieClip_CrownEnemy") as §7"-§;
                                 loop8:
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§throw§ = this.§6w§.getItemByName("TextField_VsScore") as §-"E§;
                                    loop9:
                                    while(!_loc2_)
                                    {
                                       this.§=g§ = this.§6w§.getItemByName("TextField_VsScoreEnemy") as §-"E§;
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop8;
                                             continue loop8;
                                          }
                                          continue loop9;
                                          addr75:
                                          while(!(_loc2_ && _loc1_))
                                          {
                                             this.§[!1§ = this.§6w§.getItemByName("TextField_VsPositionEnemy") as §-"E§;
                                             if(_loc1_ || this)
                                             {
                                                addr44:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr51:
                                                   if(!(_loc1_ || this))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§9!l§ = this.§6w§.getItemByName("TextField_NameEnemy") as §-"E§;
                                                         continue loop6;
                                                         §§goto(addr51);
                                                      }
                                                      addr116:
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                           continue loop3;
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           this.§5!"§ = this.§6w§.getItemByName("TextField_VsPositionHero") as §-"E§;
                           §§goto(addr75);
                        }
                     }
                     while(!(_loc1_ || this));
                     
                     return;
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
            §§push(this.§2U§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr37);
                  }
                  §§goto(addr67);
               }
               §§goto(addr45);
            }
            §§goto(addr37);
         }
         addr37:
         this.§2U§.play();
         if(_loc3_ || _loc3_)
         {
            addr45:
            §§push(this.§?P§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr70);
            }
            §§pop().play();
         }
         addr70:
         if(_loc3_ || _loc3_)
         {
            addr67:
            §§push(this.§?P§);
         }
         var _loc1_:MovieClip = this.§6w§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §[<§).userName);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§0D§(_loc2_,this.§8;§,_loc1_);
         }
         while(this.§,!S§)
         {
            if(!(_loc4_ && _loc3_))
            {
               this.§0D§(this.§,!S§.userName,this.§9!l§,this.§6w§.getItemByName("EnemyNameMask").mClip);
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§2U§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§2U§);
                     loop1:
                     while(true)
                     {
                        §§pop().pause();
                        addr97:
                        while(true)
                        {
                           §§push(this.§2U§);
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§pop().§'l§ = false;
                              loop3:
                              while(_loc1_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§?P§);
                                    if(_loc1_)
                                    {
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(_loc1_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§?P§);
                                             addr70:
                                             while(true)
                                             {
                                                §§pop().pause();
                                             }
                                          }
                                          addr68:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§?P§);
                                          if(!_loc2_)
                                          {
                                             §§pop().§'l§ = false;
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr70);
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr70);
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr45);
            }
         }
         §§goto(addr68);
      }
      
      public function levelStarted(param1:§]!;§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§5"1§ = param2;
            loop0:
            while(true)
            {
               this.§-"F§();
               loop1:
               while(true)
               {
                  this.§;""§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§^G§);
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        loop18:
                        while(true)
                        {
                           §§push(this.§^G§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§pop().y = this.§@K§;
                           loop19:
                           while(true)
                           {
                              if(_loc4_ && param2)
                              {
                                 continue loop18;
                              }
                              addr81:
                              if(_loc3_ || param1)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       this.§?P§ = null;
                                       loop20:
                                       while(true)
                                       {
                                          this.§2U§ = null;
                                          loop21:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop20;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop1;
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§1K§);
                                                      while(true)
                                                      {
                                                         §§pop().§2!H§("Start");
                                                         §§push(this.§1K§);
                                                         addr167:
                                                         break loop21;
                                                         if(_loc4_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         addr132:
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            §§push(true);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().§5%§ = §§pop();
                                                               while(!(_loc4_ && param2))
                                                               {
                                                                  this.§,!F§ = -1;
                                                                  while(!(_loc4_ && param2))
                                                                  {
                                                                     this.§<]§.x = this.§#'§;
                                                                     continue loop18;
                                                                     §§goto(addr81);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§8M§.setVisibility(false);
                                                                  break loop19;
                                                               }
                                                               addr143:
                                                               addr229:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               §§goto(addr132);
                                                            }
                                                            addr171:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr143);
                                          }
                                          loop15:
                                          while(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             addr190:
                                             while(true)
                                             {
                                                this.§<!>§ = -1;
                                                break loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§&!D§ = [];
                                             addr178:
                                             addr195:
                                             while(_loc3_)
                                             {
                                                §§goto(addr171);
                                                §§push(this.§1K§);
                                             }
                                             while(true)
                                             {
                                                this.§6!4§ = null;
                                                §§goto(addr190);
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr114);
                              if(_loc3_ || _loc3_)
                              {
                                 return;
                              }
                           }
                           while(true)
                           {
                              this.§3s§ = param1;
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr229);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc6_)
         {
            this.§++§();
         }
         var _loc1_:MovieClip = this.§6w§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §[<§).userName);
         if(_loc6_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            §§push(this.§0D§(_loc2_,this.§8;§,_loc1_));
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!(_loc7_ && this))
            {
               this.§6!4§ = null;
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§5"1§));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc7_ && this))
         {
            this.§"E§ = this.§3s§.§3"=§();
            loop0:
            while(true)
            {
               §§push(this.§"E§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§^G§);
                           if(!_loc7_)
                           {
                              §§push(false);
                              if(!(_loc7_ && _loc1_))
                              {
                                 §§pop().setVisibility(§§pop());
                                 while(true)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop1;
                                    }
                                    if(_loc6_)
                                    {
                                       §§push(this.§1K§);
                                       if(!_loc7_)
                                       {
                                          §§push(false);
                                          if(_loc6_)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             loop5:
                                             while(true)
                                             {
                                                this.§<]§.x = this.§^G§.x;
                                                addr177:
                                                while(_loc6_ || this)
                                                {
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr245:
                                                         while(true)
                                                         {
                                                            §§push(this.§1K§);
                                                            addr237:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  addr239:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr245:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§5!"§.setText(_loc3_.toString());
                                                         addr167:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr295:
                                                         var _loc5_:* = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§push(this.§9I§);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(3);
                                                                  if(_loc6_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc7_ && _loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr529:
                                                                                 §§push(_loc4_);
                                                                                 §§push(0);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       addr556:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc6_ || _loc1_)
                                                                                          {
                                                                                          }
                                                                                          addr568:
                                                                                          §§pop().setVisibility(§§pop());
                                                                                          addr569:
                                                                                          §§push(_loc3_ > 0);
                                                                                          if(_loc3_ > 0)
                                                                                          {
                                                                                             addr491:
                                                                                             §§pop();
                                                                                             addr492:
                                                                                             §§push(_loc3_ <= 3);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr468:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr476:
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr484:
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               addr430:
                                                                                                               §§push(0);
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr456:
                                                                                                                              §§pop();
                                                                                                                              addr457:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr403:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr405:
                                                                                                                                                §§push(this.§9I§);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§2!H§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                                   addr417:
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      addr321:
                                                                                                                                                      this.§8M§.setVisibility(true);
                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            this.§ !^§ = true;
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr492);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                     addr320:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr417);
                                                                                                                                                               }
                                                                                                                                                               addr366:
                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr321);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr457);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr321);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr484);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr405);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr569);
                                                                                                                                                }
                                                                                                                                                addr566:
                                                                                                                                                §§goto(addr568);
                                                                                                                                                §§push(_loc5_ > 0);
                                                                                                                                             }
                                                                                                                                             §§push(this.§9I§);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§-Q§(§§pop());
                                                                                                                                                         §§goto(addr366);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr529);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr566);
                                                                                                                                                }
                                                                                                                                                §§goto(addr529);
                                                                                                                                             }
                                                                                                                                             §§goto(addr405);
                                                                                                                                          }
                                                                                                                                          §§goto(addr456);
                                                                                                                                       }
                                                                                                                                       §§goto(addr492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr430);
                                                                                                                                 }
                                                                                                                                 §§goto(addr492);
                                                                                                                              }
                                                                                                                              §§goto(addr484);
                                                                                                                           }
                                                                                                                           §§goto(addr403);
                                                                                                                        }
                                                                                                                        §§goto(addr468);
                                                                                                                     }
                                                                                                                     §§goto(addr476);
                                                                                                                  }
                                                                                                                  §§goto(addr456);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr568);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr568);
                                                                                                }
                                                                                                §§goto(addr491);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          §§goto(addr468);
                                                                                       }
                                                                                       §§goto(addr568);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              §§pop();
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr568);
                                                                        }
                                                                        §§goto(addr556);
                                                                     }
                                                                     §§goto(addr568);
                                                                  }
                                                               }
                                                               §§goto(addr566);
                                                            }
                                                            §§goto(addr529);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      continue;
                                                      addr161:
                                                   }
                                                   §§goto(addr239);
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr237);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§@0§(this.§"E§);
                                          continue loop1;
                                       }
                                       addr261:
                                    }
                                    addr121:
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(AngryBirdsFP11.sUserProgress);
                                       if(_loc6_ || this)
                                       {
                                          (§§pop() as §[<§).§%"2§(LevelManager.§'!O§,_loc3_);
                                          addr150:
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr177);
                                       }
                                       else
                                       {
                                          addr284:
                                          §§push(§§pop().getEagleScoreForLevel(this.§5"1§));
                                          if(!(_loc7_ && _loc1_))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       §§goto(addr295);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§^G§);
                                          addr243:
                                          while(true)
                                          {
                                             §§push(true);
                                             addr244:
                                             while(true)
                                             {
                                                §§pop().setVisibility(§§pop());
                                             }
                                          }
                                       }
                                       addr256:
                                    }
                                    §§goto(addr245);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr244);
                              §§goto(addr245);
                           }
                           else
                           {
                              §§goto(addr243);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr261);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(this.§3s§.§6I§));
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
                           §§push(§#6§.§6!z§.objects.mSardineCanAdded);
                           loop4:
                           while(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              loop16:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§ !^§);
                                             addr70:
                                             addr154:
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.initialize();
                                                      addr87:
                                                      while(_loc3_ || param1)
                                                      {
                                                      }
                                                      continue loop3;
                                                      addr43:
                                                      if(_loc2_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               §§push(this.§6!4§ == null);
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr97:
                                                               if(_loc2_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  addr101:
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr163:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§1e§);
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop16;
                                                               }
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         else
                                                         {
                                                            §§push(true);
                                                            addr144:
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      else
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr130:
                                                         this.§8M§.setVisibility(false);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.updateAnimations(param1);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr43);
                                                   }
                                                   §§goto(addr87);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc3_ || param1))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop8;
                                                }
                                                §§goto(addr163);
                                                §§goto(addr70);
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr154);
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            if(this.§,!F§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§,!F§ = param1;
                  while(true)
                  {
                     this.§throw§.setText(this.§[@§(this.§,!F§));
                     do
                     {
                        if(!this.§"E§)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(Boolean(this.§3s§.§6I§));
                           if(_loc6_)
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
                           §§goto(addr303);
                        }
                     }
                     while(!(_loc6_ || param3));
                     
                     if(_loc6_)
                     {
                        return;
                     }
                  }
                  addr356:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr356);
      }
      
      private function §@0§(param1:§2!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§'!@§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§9!Y§ <= 3);
               addr158:
               loop1:
               while(true)
               {
                  §§push(param1.§9!Y§ > 0);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr150:
                           while(true)
                           {
                              §§push(param1.§9!Y§ <= 3);
                              if(_loc2_ || _loc3_)
                              {
                                 break;
                              }
                              continue loop8;
                           }
                        }
                        addr149:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              this.§[!1§.setText(param1.§9!Y§.toString());
                              while(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    this.§=g§.setText(this.§[@§(param1.§ "3§));
                                    do
                                    {
                                       this.§,!J§(param1);
                                    }
                                    while(!(_loc2_ || this));
                                    
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_ || this)
                                    {
                                       break loop4;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              addr134:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           return;
                        }
                        while(!(_loc3_ && param1))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr149);
               }
            }
            addr153:
         }
         while(true)
         {
            §§push(this.§'!@§);
            if(!(_loc3_ && this))
            {
               §§pop().§2!H§(["Gold","Silver","Bronze"][param1.§9!Y§ - 1]);
               §§goto(addr134);
            }
            else
            {
               §§goto(addr153);
            }
         }
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7"-§ = null;
         for each(_loc2_ in [this.§1K§,this.§#!u§,this.§1K§])
         {
            if(_loc6_)
            {
               this.§]!J§(_loc2_,param1,true);
            }
         }
      }
      
      private function §,!J§(param1:§2!W§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§!H§.§,!6§(param1.userId));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(!_loc4_)
         {
            this.§,!S§ = param1;
            while(true)
            {
               this.§-"F§();
            }
            addr108:
         }
         loop1:
         while(true)
         {
            this.§0!B§ = new §3"2§(_loc3_,"",false,§+!p§.NORMAL);
            while(!_loc4_)
            {
               this.§6!T§(this.§]=§,this.§0!B§);
               while(!(_loc4_ && _loc2_))
               {
                  if(_loc5_)
                  {
                     this.§0D§(param1.userName,this.§9!l§,this.§6w§.getItemByName("EnemyNameMask").mClip);
                     if(!_loc4_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop1;
               }
            }
            §§goto(addr108);
         }
      }
      
      private function §0D§(param1:String, param2:§-"E§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop().length <= 6)
               {
                  param2.mClip.mask = null;
                  loop1:
                  while(true)
                  {
                     param3.visible = false;
                     while(true)
                     {
                        if(!(_loc5_ || param2))
                        {
                           while(true)
                           {
                              param2.mClip.mask = param3;
                              addr108:
                              loop6:
                              while(true)
                              {
                                 param3.visible = true;
                                 addr97:
                                 while(_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 addr99:
                              }
                           }
                           addr104:
                        }
                        while(true)
                        {
                           param2.setText(param1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop1;
                           §§goto(addr99);
                        }
                     }
                  }
               }
               §§goto(addr104);
               §§push(param1);
               if(_loc5_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr108);
      }
      
      private function §6!T§(param1:§7"-§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(!_loc3_)
               {
                  param1.mClip.addChild(param2);
               }
               if(_loc4_)
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
      
      private function §+">§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push((AngryBirdsFP11.sUserProgress as §[<§).avatarString);
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §[<§).§4v§);
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§;""§();
         }
         do
         {
            this.§@q§ = new §3"2§(_loc2_,"",false,§+!p§.NORMAL);
            do
            {
               this.§6!T§(this.§,8§,this.§@q§);
            }
            while(!(_loc4_ || _loc1_));
            
         }
         while(_loc3_ && this);
         
      }
      
      private function §+O§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+">§();
         }
      }
      
      private function §-"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0!B§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr74:
                     this.§0!B§.dispose();
                  }
                  do
                  {
                     this.§0!B§ = null;
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      private function §;""§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@q§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr55:
                     this.§@q§.dispose();
                  }
                  do
                  {
                     this.§@q§ = null;
                  }
                  while(!(_loc2_ || this));
                  
                  addr45:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      public function set §64§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1e§ = param1;
         }
         do
         {
            §§push(this.§8M§);
            §§push(this.§1e§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function § 9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6!4§ = this.§&!D§.pop();
            while(true)
            {
               this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§#'§ + 15},{"x":this.§#'§},0.5,§>!+§.§%%§);
               loop1:
               while(true)
               {
                  §§push(this.§?P§);
                  while(true)
                  {
                     §§pop().onComplete = this.§,!q§;
                     continue loop1;
                     §§goto(addr91);
                  }
               }
            }
         }
         addr91:
         while(true)
         {
            §§push(this.§?P§);
            if(_loc2_)
            {
               §§pop().play();
               do
               {
                  §>!E§.§7N§("NextToBeat_Sound","ChannelPowerups");
               }
               while(_loc1_);
               
               if(!(_loc1_ && _loc2_))
               {
                  continue loop0;
               }
               continue loop1;
            }
            continue loop2;
         }
         addr60:
      }
      
      private function §,!q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            this.§?P§ = null;
            loop0:
            while(true)
            {
               §§push(this.§#!u§);
               loop1:
               while(true)
               {
                  §§pop().§2!H§("Start");
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        loop33:
                        while(true)
                        {
                           §§push(this.§#!u§);
                           while(true)
                           {
                              §§push(true);
                              while(true)
                              {
                                 §§pop().§5%§ = §§pop();
                                 if(_loc4_ && _loc1_)
                                 {
                                    break loop1;
                                 }
                                 §§push(this.§#!u§);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    §§push(true);
                                    if(_loc3_)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       if(_loc3_)
                                       {
                                          if(false)
                                          {
                                             continue loop33;
                                          }
                                          addr88:
                                          §§push(this.§&!D§);
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop().length > 0)
                                             {
                                                break loop1;
                                             }
                                             addr98:
                                             var _loc1_:§2!W§ = this.§"E§;
                                             if(_loc3_)
                                             {
                                                §§push(this.§6!4§.§9!Y§ == 1);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr497:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr498:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_ == null);
                                                            }
                                                         }
                                                         addr497:
                                                      }
                                                      while(true)
                                                      {
                                                         while(!§§pop())
                                                         {
                                                            this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§#'§},null,0.5);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(this.§?P§);
                                                               loop6:
                                                               for(; _loc3_ || _loc1_; §§push(this.§?P§),if(!(_loc3_ || _loc1_))
                                                               {
                                                                  continue;
                                                               },§§pop().play(),§§goto(addr351))
                                                               {
                                                                  §§pop().onComplete = null;
                                                                  loop7:
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     continue loop6;
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              this.§@0§(_loc1_);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(int(_loc1_.§9!Y§ + 1));
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       addr332:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§9I§);
                                                                                          addr318:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_ <= 3);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().setVisibility(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                continue loop10;
                                                                                                addr122:
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         §§goto(addr103);
                                                                                                      }
                                                                                                      addr487:
                                                                                                      this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§^G§.mClip.x},null,0.5);
                                                                                                      break loop8;
                                                                                                   }
                                                                                                   addr415:
                                                                                                   this.§5!"§.setText("1");
                                                                                                   break loop9;
                                                                                                   addr425:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr410:
                                                                                          §§pop().setVisibility(§§pop());
                                                                                          break loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                                 if(_loc4_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§2U§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().onComplete = this.§`!,§;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§2U§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().play();
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr115);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr407:
                                                                                 §§push(this.§9I§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 §§goto(addr410);
                                                                                 §§push(true);
                                                                              }
                                                                              §§goto(addr446);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(this.§9I§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr318);
                                                                        }
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push("Gold");
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§pop().§2!H§(null[_loc2_ - 1]);
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                     §§goto(addr443);
                                                                  }
                                                                  addr103:
                                                                  return;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().play();
                                                                  §§goto(addr432);
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            this.§^G§.setVisibility(false);
                                                            §§goto(addr487);
                                                            §§goto(addr432);
                                                         }
                                                         §§goto(addr498);
                                                      }
                                                   }
                                                }
                                                §§goto(addr497);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr98);
                                          §§push(§§pop()[this.§&!D§.length - 1]);
                                       }
                                       break loop1;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  break;
               }
               §§goto(addr88);
            }
         }
         §§goto(addr68);
      }
      
      private function §`!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2U§ = null;
            loop0:
            while(true)
            {
               this.§6!4§ = null;
               while(this.§&!D§.length > 0)
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     this.§ 9§();
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §#$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?P§ = null;
         }
         do
         {
            this.§6!4§ = null;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private function §[@§(param1:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc8_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               if(_loc8_)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_ || this)
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(!(_loc8_ || _loc3_))
                  {
                     break;
                  }
                  _loc2_ = §§pop();
                  if(!_loc7_)
                  {
                     addr98:
                     break loop0;
                  }
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_ || this)
                  {
                     if(§§pop().length <= 0)
                     {
                        addr205:
                        if(_loc8_ || _loc3_)
                        {
                           var _loc5_:int = 0;
                           if(!(_loc7_ && _loc2_))
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_ || _loc3_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + (_loc4_ + ","));
                                    }
                                 }
                                 _loc2_ = §§pop();
                              }
                           }
                           if(_loc8_ || _loc2_)
                           {
                           }
                           addr227:
                           §§push(_loc2_);
                           break;
                        }
                        §§push(_loc2_);
                        if(_loc8_ || _loc2_)
                        {
                           addr214:
                           §§push(§§pop().substr(0,_loc2_.length - 1));
                           if(!(_loc7_ && _loc3_))
                           {
                              addr226:
                              _loc2_ = §§pop();
                           }
                           break;
                        }
                        break;
                     }
                     _loc3_.push(_loc2_.substr(0,3));
                     if(_loc8_ || this)
                     {
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           §§push(3);
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop().substr(§§pop()));
                              if(!(_loc7_ && _loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr227);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr98);
      }
      
      private function §]!J§(param1:§7"-§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param1))
         {
            §§push(param1.§5%§);
            while(true)
            {
               if(§§pop() == true)
               {
                  if(_loc5_ || param3)
                  {
                     §§push(param1.§&!q§(param2));
                     if(_loc5_ || param3)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param2))
                        {
                           addr108:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() != "End")
                        {
                           §§goto(addr27);
                        }
                        else
                        {
                           addr27:
                        }
                        if(!(_loc6_ && param1))
                        {
                           addr119:
                           param1.§5%§ = false;
                        }
                        continue;
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr119);
               }
               addr27:
               return;
            }
         }
         param1.setVisibility(false);
         §§goto(addr68);
      }
      
      private function §++§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§#"1§ = null;
         var _loc2_:§2!!§ = null;
         for each(_loc1_ in this.§3s§.data)
         {
            if(_loc6_)
            {
               if(!(_loc1_ is §2!W§))
               {
                  continue;
               }
            }
            _loc2_ = new §2!!§(_loc1_.userId,"",false,§+!p§.NORMAL);
            if(_loc6_)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
