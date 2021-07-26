package §`!6§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import § "!§.§8!0§;
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§^n§;
   import §,l§.§#!>§;
   import §,l§.§<"W§;
   import §1!t§.§!>§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §<w§.§8p§;
   import §<w§.§9"?§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §>i§
   {
       
      
      private var §2"@§:§`_§;
      
      private var §`g§:§8p§;
      
      private var §%$§:§6!K§;
      
      private var §4A§:§6!K§;
      
      private var §'!"§:Number;
      
      private var §6!p§:Number;
      
      private var §'!p§:§ ! §;
      
      private var §?!d§:§8!0§;
      
      private var §="7§:Boolean = false;
      
      private var §9!h§:Boolean;
      
      private var §+H§:§<"W§;
      
      private var §4?§:int;
      
      private var §54§:§<"W§;
      
      private var §>!B§:int = -1;
      
      private var §>"6§:Array;
      
      private var §[K§:String;
      
      private var §6"V§:§<"W§;
      
      private var §1"H§:§0!Y§;
      
      private var §="%§:§0!Y§;
      
      private var §`!u§:§!>§;
      
      private var §[F§:§^n§;
      
      private var §8!P§:§^n§;
      
      private var §9[§:§^n§;
      
      private var §`9§:§^n§;
      
      private var § !6§:§^n§;
      
      private var §2!Q§:§^n§;
      
      private var §#!q§:§4"9§;
      
      private var §=!H§:§4"9§;
      
      private var §7"V§:§4"9§;
      
      private var § F§:§4"9§;
      
      private var §"!L§:§4"9§;
      
      private var §8"A§:§4"9§;
      
      public function §>i§(param1:§`_§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>"6§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§2"@§ = param1;
                  continue loop0;
                  addr82:
                  if(_loc3_ || _loc2_)
                  {
                     this.§'!"§ = this.§="%§.x;
                     do
                     {
                        this.§6!p§ = this.§`!u§.y;
                     }
                     while(_loc2_);
                     
                     addr89:
                     if(!(_loc2_ && this))
                     {
                        return;
                        addr65:
                     }
                     while(_loc3_ || _loc2_)
                     {
                        §§goto(addr82);
                        §§goto(addr89);
                     }
                     continue loop0;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §?!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§="%§ = this.§2"@§.getItemByName("Container_VsHero") as §0!Y§;
            while(true)
            {
               this.§`!u§ = this.§2"@§.getItemByName("Container_VsEnemy") as §0!Y§;
               loop1:
               while(true)
               {
                  this.§1"H§ = this.§2"@§.getItemByName("Container_Vs") as §0!Y§;
                  addr235:
                  while(true)
                  {
                     this.§[F§ = this.§2"@§.getItemByName("MovieClip_VsAnimation") as §^n§;
                     continue loop1;
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
         §§goto(addr95);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§%$§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     addr42:
                     this.§%$§.play();
                     if(!(_loc4_ && _loc2_))
                     {
                        addr50:
                        §§push(this.§4A§);
                        if(!(_loc4_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 addr74:
                                 this.§4A§.play();
                              }
                           }
                           var _loc1_:MovieClip = this.§2"@§.getItemByName("PlayerNameMask").mClip;
                           §§push((AngryBirdsFP11.sUserProgress as §#!$§).userName);
                           if(_loc3_)
                           {
                              §§push(§§pop());
                           }
                           var _loc2_:* = §§pop();
                           if(_loc3_)
                           {
                              this.§@!@§(_loc2_,this.§7"V§,_loc1_);
                              while(this.§6"V§)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    this.§@!@§(this.§6"V§.userName,this.§ F§,this.§2"@§.getItemByName("EnemyNameMask").mClip);
                                 }
                                 break;
                              }
                              return;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr50);
            }
         }
         §§goto(addr42);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%$§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§%$§);
                     while(true)
                     {
                        §§pop().pause();
                        loop3:
                        while(true)
                        {
                           §§push(this.§%$§);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              §§pop().§="6§ = false;
                              while(_loc1_ || _loc1_)
                              {
                                 loop6:
                                 while(!(_loc2_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(this.§4A§);
                                    if(!_loc2_)
                                    {
                                       §§pop().§="6§ = false;
                                       if(_loc1_)
                                       {
                                          §§goto(addr24);
                                       }
                                       continue;
                                    }
                                    addr63:
                                    while(true)
                                    {
                                       §§pop().pause();
                                       continue loop6;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§4A§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§goto(addr63);
                           }
                           addr61:
                        }
                        §§goto(addr64);
                     }
                     break;
                  }
                  §§goto(addr63);
               }
               addr24:
               return;
            }
         }
         §§goto(addr61);
      }
      
      public function levelStarted(param1:§8p§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§[K§ = param2;
            while(true)
            {
               this.§=!A§();
               addr247:
               while(true)
               {
                  this.§07§();
               }
            }
            addr251:
         }
         loop2:
         while(true)
         {
            §§push(this.§`!u§);
            loop3:
            while(true)
            {
               §§pop().setVisibility(true);
               loop4:
               while(true)
               {
                  this.§1"H§.setVisibility(false);
                  loop5:
                  while(true)
                  {
                     this.§`g§ = param1;
                     while(true)
                     {
                        this.§="7§ = false;
                        continue loop2;
                        addr193:
                        loop8:
                        for(; !(_loc4_ && param2); if(!(_loc3_ || this))
                        {
                           continue;
                        },this.§4A§ = null,§§goto(addr73))
                        {
                           this.§>!B§ = -1;
                           loop9:
                           while(true)
                           {
                              this.§>"6§ = [];
                              loop10:
                              while(true)
                              {
                                 §§push(this.§[F§);
                                 while(true)
                                 {
                                    §§push(true);
                                    addr175:
                                    while(true)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       addr176:
                                       while(!_loc4_)
                                       {
                                          §§push(this.§[F§);
                                          loop14:
                                          while(true)
                                          {
                                             §§pop().§!!a§("Start");
                                             addr161:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      break;
                                                   }
                                                   continue loop14;
                                                }
                                                continue loop9;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    if(_loc4_ && param2)
                                    {
                                       continue;
                                    }
                                    §§push(true);
                                    if(_loc3_)
                                    {
                                       §§pop().§6",§ = §§pop();
                                       loop16:
                                       while(true)
                                       {
                                          this.§4?§ = -1;
                                          loop17:
                                          while(true)
                                          {
                                             this.§="%§.x = this.§'!"§;
                                             addr119:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop17;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr176);
                                             }
                                             continue loop3;
                                             addr54:
                                             if(!(_loc4_ && this))
                                             {
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr251);
                                          addr73:
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc3_ || param2))
                                             {
                                                continue loop16;
                                             }
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                this.§%$§ = null;
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      continue loop8;
                                                      addr93:
                                                   }
                                                   §§goto(addr54);
                                                   §§goto(addr119);
                                                   addr68:
                                                   this.§&!1§();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop20;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr247);
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr175);
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
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            this.§+y§();
         }
         var _loc1_:MovieClip = this.§2"@§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).userName);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            §§push(this.§@!@§(_loc2_,this.§7"V§,_loc1_));
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!(_loc6_ && _loc1_))
            {
               this.§54§ = null;
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§[K§));
         if(_loc7_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            this.§+H§ = this.§`g§.§!_§();
            while(true)
            {
               §§push(this.§+H§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     if(_loc7_)
                     {
                        _loc3_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§`!u§);
                           if(!_loc6_)
                           {
                              §§push(false);
                              if(!_loc6_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§[F§);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(false);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§pop().setVisibility(§§pop());
                                          continue;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          loop7:
                                          while(!_loc6_)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                this.§"!L§.setText(_loc3_.toString());
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop() > 0)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               while(_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop3;
                                                               addr149:
                                                            }
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(AngryBirdsFP11.sUserProgress);
                                                               if(!_loc6_)
                                                               {
                                                                  (§§pop() as §#!$§).§'!y§(LevelManager.§ T§,_loc3_);
                                                               }
                                                               else
                                                               {
                                                                  addr260:
                                                                  §§push(§§pop().getEagleScoreForLevel(this.§[K§));
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(this.§ !6§);
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(3);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr507:
                                                                                          §§push(_loc4_);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr510:
                                                                                             §§push(0);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                addr528:
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc7_ || _loc2_)
                                                                                                {
                                                                                                   addr536:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr549:
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr546:
                                                                                                         §§push(_loc5_);
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      §§pop().setVisibility(§§pop());
                                                                                                      addr550:
                                                                                                      §§push(_loc3_ > 0);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr451:
                                                                                                         §§push(§§pop() && _loc3_ <= 3);
                                                                                                         §§push(§§pop() && _loc3_ <= 3);
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr460:
                                                                                                               §§pop();
                                                                                                               addr461:
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr407:
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc7_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr430:
                                                                                                                                       if(_loc7_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr438:
                                                                                                                                          if(_loc7_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc7_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr366:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr372:
                                                                                                                                                               §§push(this.§ !6§);
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§!!a§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                                                  addr387:
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr312:
                                                                                                                                                                     this.§1"H§.setVisibility(true);
                                                                                                                                                                     this.§="7§ = true;
                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr550);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr438);
                                                                                                                                                                        }
                                                                                                                                                                        addr341:
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr312);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr387);
                                                                                                                                                                     }
                                                                                                                                                                     addr317:
                                                                                                                                                                     §§goto(addr317);
                                                                                                                                                                     addr389:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr461);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr546);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr387);
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§ !6§);
                                                                                                                                                         if(_loc7_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§%"C§(§§pop());
                                                                                                                                                                  §§goto(addr341);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr546);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr507);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr372);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr451);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr430);
                                                                                                                                                }
                                                                                                                                                §§goto(addr407);
                                                                                                                                             }
                                                                                                                                             §§goto(addr461);
                                                                                                                                          }
                                                                                                                                          §§goto(addr471);
                                                                                                                                       }
                                                                                                                                       §§goto(addr470);
                                                                                                                                    }
                                                                                                                                    §§goto(addr366);
                                                                                                                                 }
                                                                                                                                 §§goto(addr451);
                                                                                                                              }
                                                                                                                              §§goto(addr460);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        §§goto(addr550);
                                                                                                                     }
                                                                                                                     §§goto(addr470);
                                                                                                                  }
                                                                                                                  §§goto(addr550);
                                                                                                               }
                                                                                                               §§goto(addr470);
                                                                                                            }
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                         §§goto(addr451);
                                                                                                      }
                                                                                                      §§goto(addr470);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr549);
                                                                                             §§push(§§pop() > §§pop());
                                                                                          }
                                                                                          §§goto(addr546);
                                                                                       }
                                                                                       §§goto(addr536);
                                                                                    }
                                                                                    §§goto(addr549);
                                                                                 }
                                                                              }
                                                                              §§goto(addr536);
                                                                           }
                                                                           §§goto(addr528);
                                                                        }
                                                                        §§goto(addr510);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§@!i§(this.§+H§);
                                                                  continue loop1;
                                                               }
                                                               addr247:
                                                            }
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr258:
                                                      §§push(AngryBirdsFP11.sUserProgress);
                                                      §§goto(addr260);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr260);
                                             }
                                             while(true)
                                             {
                                                §§push(this.§[F§);
                                                continue loop6;
                                             }
                                          }
                                          addr242:
                                          while(true)
                                          {
                                             §§push(this.§`!u§);
                                             addr222:
                                             while(true)
                                             {
                                                §§push(true);
                                                addr223:
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   §§goto(addr224);
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                       addr215:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr215);
                                    }
                                 }
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr222);
                        }
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr247);
               }
               if(!(_loc7_ || this))
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr135);
               }
               addr165:
            }
         }
         §§goto(addr165);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(this.§`g§.§each §));
            if(!(_loc2_ && this))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop11:
                     while(true)
                     {
                        §§pop();
                        addr177:
                        while(true)
                        {
                           §§push(§?l§.§'h§.objects.mSardineCanAdded);
                           continue loop11;
                        }
                     }
                     addr176:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr89);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(this.§4?§ != param1)
            {
               while(true)
               {
                  this.§4?§ = param1;
                  loop1:
                  while(_loc6_)
                  {
                     this.§#!q§.setText(this.§?_§(this.§4?§));
                     loop2:
                     for(; this.§+H§; if(!(_loc6_ || param3))
                     {
                        continue;
                     },§§goto(addr329))
                     {
                        while(true)
                        {
                           §§push(Boolean(this.§`g§.§each §));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(_loc6_)
                                       {
                                          §§push(§?l§.§'h§.objects.mSardineCanAdded);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop8:
                                             while(_loc6_ || this)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr295:
                                                         addr202:
                                                         while(true)
                                                         {
                                                            §§push(this.§9!h§);
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr147:
                                                         §§push(Boolean(this.§+H§));
                                                         if(Boolean(this.§+H§))
                                                         {
                                                            addr153:
                                                            §§pop();
                                                            addr154:
                                                            §§push(this.§4?§);
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(this.§+H§.§,y§);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr124:
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              addr64:
                                                                              §§push(this.§>"6§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(§§pop().length <= 5)
                                                                                    {
                                                                                       addr74:
                                                                                       §§push(this.§>"6§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr81:
                                                                                          §§push(§§pop().length > 0);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc6_ || param3)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr92:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr95:
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(!this.§54§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr36);
                                                                                                                  }
                                                                                                                  §§goto(addr153);
                                                                                                               }
                                                                                                               §§goto(addr81);
                                                                                                            }
                                                                                                            §§goto(addr92);
                                                                                                         }
                                                                                                         addr171:
                                                                                                         §§goto(addr147);
                                                                                                      }
                                                                                                      addr139:
                                                                                                      if(!(_loc5_ && param3))
                                                                                                      {
                                                                                                         §§goto(addr64);
                                                                                                      }
                                                                                                      §§goto(addr147);
                                                                                                      addr201:
                                                                                                   }
                                                                                                   §§goto(addr124);
                                                                                                }
                                                                                                addr36:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            this.§?!5§();
                                                                                                            §§goto(addr56);
                                                                                                         }
                                                                                                         §§goto(addr74);
                                                                                                      }
                                                                                                      §§goto(addr95);
                                                                                                   }
                                                                                                   §§goto(addr56);
                                                                                                }
                                                                                                addr56:
                                                                                                if(!(_loc6_ || param1))
                                                                                                {
                                                                                                   §§goto(addr154);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr147);
                                                                                       }
                                                                                       addr207:
                                                                                       §§pop().unshift(this.§+H§);
                                                                                       addr210:
                                                                                       §§push(int(this.§`g§.data.indexOf(this.§+H§) - 1));
                                                                                       §§push(int(this.§`g§.data.indexOf(this.§+H§) - 1));
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr186:
                                                                                          addr185:
                                                                                          if(§§pop() >= 0)
                                                                                          {
                                                                                             addr187:
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                this.§+H§ = this.§`g§.data[_loc4_];
                                                                                                §§goto(addr201);
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                          this.§+H§ = null;
                                                                                          §§goto(addr171);
                                                                                       }
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                    §§push(this.§>"6§);
                                                                                 }
                                                                                 §§pop().pop();
                                                                                 §§goto(addr139);
                                                                              }
                                                                              §§goto(addr74);
                                                                           }
                                                                           §§goto(addr187);
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     §§goto(addr207);
                                                                     §§push(this.§>"6§);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      addr294:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  return;
                                                               }
                                                               break loop2;
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         else
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!(_loc6_ || this))
                                                            {
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr294);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr289);
                              }
                           }
                           addr329:
                        }
                     }
                     return;
                  }
               }
            }
         }
         addr350:
      }
      
      private function §@!i§(param1:§<"W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§2!Q§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§'Q§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§'Q§ > 0);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(param1.§'Q§ <= 3);
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                        }
                        addr130:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc3_)
                           {
                              §§push(this.§2!Q§);
                              if(_loc3_)
                              {
                                 §§pop().§!!a§(["Gold","Silver","Bronze"][param1.§'Q§ - 1]);
                                 loop4:
                                 while(_loc3_ || this)
                                 {
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                                 addr113:
                              }
                              continue loop0;
                           }
                           continue;
                           addr88:
                        }
                        while(true)
                        {
                           this.§8"A§.setText(param1.§'Q§.toString());
                           do
                           {
                              this.§=!H§.setText(this.§?_§(param1.§,y§));
                              do
                              {
                                 this.§%;§(param1);
                              }
                              while(_loc2_);
                              
                           }
                           while(!_loc3_);
                           
                           if(!_loc2_)
                           {
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr113);
                        }
                        return;
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr120);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^n§ = null;
         for each(_loc2_ in [this.§[F§,this.§8!P§,this.§[F§])
         {
            if(_loc5_ || this)
            {
               this.§77§(_loc2_,param1,true);
            }
         }
      }
      
      private function §%;§(param1:§<"W§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§9"?§.§%!h§(param1.userId));
         if(!(_loc5_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(!_loc5_)
         {
            this.§6"V§ = param1;
            while(true)
            {
               this.§=!A§();
            }
            addr122:
         }
         loop1:
         while(true)
         {
            this.§'!p§ = new §8!0§(_loc3_,"",false,§!"O§.NORMAL);
            while(!(_loc5_ && _loc3_))
            {
               this.§^Q§(this.§`9§,this.§'!p§);
               do
               {
                  this.§@!@§(param1.userName,this.§ F§,this.§2"@§.getItemByName("EnemyNameMask").mClip);
               }
               while(!(_loc4_ || this));
               
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr122);
            }
         }
      }
      
      private function §@!@§(param1:String, param2:§4"9§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().length <= 6)
               {
                  param2.mClip.mask = null;
                  loop1:
                  while(true)
                  {
                     param3.visible = false;
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           param2.setText(param1);
                           if(!(_loc4_ && param2))
                           {
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       break;
                                    }
                                    addr94:
                                    while(true)
                                    {
                                       param2.mClip.mask = param3;
                                       addr98:
                                       while(true)
                                       {
                                          param3.visible = true;
                                       }
                                    }
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr98);
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr94);
            }
            addr91:
         }
         while(true)
         {
            §§push(param1);
            if(_loc5_)
            {
               break;
            }
            §§goto(addr91);
         }
         return §§pop();
      }
      
      private function §^Q§(param1:§^n§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc4_ || param1)
               {
                  param1.mClip.addChild(param2);
               }
               if(!(_loc3_ && param1))
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
      
      private function §&!1§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).avatarString);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            this.§07§();
         }
         while(true)
         {
            this.§?!d§ = new §8!0§(_loc2_,"",false,§!"O§.NORMAL);
            while(_loc3_)
            {
               this.§^Q§(this.§9[§,this.§?!d§);
               if(!(_loc4_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private function §7S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!1§();
         }
      }
      
      private function §=!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'!p§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§'!p§);
                     addr54:
                     addr41:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§'!p§ = null;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr29);
                  }
               }
               addr29:
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr41);
      }
      
      private function §07§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§?!d§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr54:
                     this.§?!d§.dispose();
                  }
                  do
                  {
                     this.§?!d§ = null;
                  }
                  while(_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function set §+;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!h§ = param1;
            do
            {
               §§push(this.§1"H§);
               §§push(this.§9!h§);
               if(_loc3_)
               {
                  §§push(!§§pop());
               }
               §§pop().setVisibility(§§pop());
            }
            while(_loc2_);
            
         }
      }
      
      private function §?!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§54§ = this.§>"6§.pop();
         }
         while(true)
         {
            this.§4A§ = §0W§.§&"5§.§]!r§(this.§="%§.mClip,{"x":this.§'!"§ + 15},{"x":this.§'!"§},0.5,§0W§.§8!s§);
            loop1:
            while(true)
            {
               §§push(this.§4A§);
               while(true)
               {
                  §§pop().onComplete = this.§?"Y§;
                  §§push(this.§4A§);
                  addr86:
                  continue loop1;
                  if(!(_loc1_ && this))
                  {
                     §§pop().play();
                     do
                     {
                        §@"M§.§3"C§("NextToBeat_Sound","ChannelPowerups");
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && this))
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc1_ && this)
            {
               continue;
            }
            §§goto(addr86);
         }
      }
      
      private function §?"Y§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || this)
         {
            this.§4A§ = null;
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.§8!P§);
               loop0:
               while(true)
               {
                  §§pop().§!!a§("Start");
                  addr66:
                  while(true)
                  {
                     addr46:
                     while(true)
                     {
                        §§push(this.§8!P§);
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr93);
            §§push(this.§>"6§);
         }
         §§goto(addr66);
      }
      
      private function §!""§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§%$§ = null;
         }
         loop0:
         while(true)
         {
            this.§54§ = null;
            while(true)
            {
               if(_loc1_)
               {
                  if(this.§>"6§.length <= 0)
                  {
                     break;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  addr65:
                  continue;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §,!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§4A§ = null;
         }
         do
         {
            this.§54§ = null;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function §?_§(param1:int) : String
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
            for(; §§pop().length % 3 > 0; if(!(_loc8_ || _loc2_))
            {
               continue;
            },§§goto(addr85),§§push(§§pop().slice(_loc2_.length % 3)))
            {
               loop1:
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  addr116:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        continue loop0;
                     }
                     addr85:
                     _loc2_ = §§pop();
                     if(_loc8_)
                     {
                        if(_loc8_)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
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
                  if(!(_loc7_ && _loc2_))
                  {
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc8_ || this)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc3_.push(_loc2_.substr(0,3));
                           if(!(_loc8_ || param1))
                           {
                              break;
                           }
                           §§push(_loc2_);
                           if(!(_loc7_ && this))
                           {
                              §§push(3);
                              if(_loc8_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(!_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc8_ || param1)
                                       {
                                          addr199:
                                          §§push(§§pop().substr(0,_loc2_.length - 1));
                                          if(_loc7_ && _loc2_)
                                          {
                                          }
                                          break loop3;
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    else
                                    {
                                       addr190:
                                    }
                                    if(true)
                                    {
                                       continue loop3;
                                       addr212:
                                    }
                                    continue loop2;
                                    §§push(_loc2_);
                                    break loop3;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr212);
                     }
                     var _loc5_:int = 0;
                     if(!_loc7_)
                     {
                        var _loc6_:* = _loc3_;
                        if(_loc7_)
                        {
                        }
                        while(§§hasnext(_loc6_,_loc5_))
                        {
                           §§push(§§nextvalue(_loc5_,_loc6_));
                           if(_loc8_)
                           {
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc7_ && this))
                                 {
                                    addr163:
                                    §§push(§§pop() + (_loc4_ + ","));
                                 }
                                 _loc2_ = §§pop();
                              }
                              continue;
                           }
                           §§goto(addr163);
                        }
                     }
                     if(_loc7_ && param1)
                     {
                     }
                     §§goto(addr190);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr116);
      }
      
      private function §77§(param1:§^n§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(_loc6_)
         {
            §§push(param1.§6",§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  while(true)
                  {
                     §§push(param1.§=;§(param2));
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc6_ || this)
                        {
                           addr86:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() != "End")
                        {
                           return;
                           addr90:
                        }
                        else
                        {
                           addr23:
                        }
                        addr23:
                        while(true)
                        {
                           param1.§6",§ = false;
                           continue loop0;
                        }
                        continue;
                     }
                     §§goto(addr86);
                  }
                  addr73:
               }
               §§goto(addr23);
            }
         }
         §§goto(addr53);
      }
      
      private function §+y§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§#!>§ = null;
         var _loc2_:§ ! § = null;
         for each(_loc1_ in this.§`g§.data)
         {
            if(_loc5_)
            {
               if(!(_loc1_ is §<"W§))
               {
                  continue;
               }
            }
            _loc2_ = new § ! §(_loc1_.userId,"",false,§!"O§.NORMAL);
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
