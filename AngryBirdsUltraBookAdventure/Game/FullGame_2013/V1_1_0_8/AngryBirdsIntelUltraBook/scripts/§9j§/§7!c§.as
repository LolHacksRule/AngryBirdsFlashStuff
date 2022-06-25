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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§;!b§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§'!Q§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§3$§();
                     while(_loc3_)
                     {
                        this.§@]§ = this.§'b§.x;
                        loop4:
                        while(_loc3_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 this.§7!A§ = this.§#"§.y;
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §3$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'b§ = this.§'!Q§.getItemByName("Container_VsHero") as §^! §;
            while(true)
            {
               this.§#"§ = this.§'!Q§.getItemByName("Container_VsEnemy") as §^! §;
               loop1:
               while(_loc1_)
               {
                  this.§'!=§ = this.§'!Q§.getItemByName("Container_Vs") as §^! §;
                  while(true)
                  {
                     this.§"!C§ = this.§'!Q§.getItemByName("MovieClip_VsAnimation") as §7!p§;
                     addr208:
                     while(true)
                     {
                        this.§`!&§ = this.§'!Q§.getItemByName("MovieClip_Boom") as §7!p§;
                        addr198:
                        while(true)
                        {
                           this.§"!a§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicHero") as §7!p§;
                        }
                     }
                     loop12:
                     for(; _loc1_ || this; if(!(_loc1_ || this))
                     {
                        continue;
                     },if(_loc1_)
                     {
                        if(_loc1_)
                        {
                           §§goto(addr50);
                        }
                        §§goto(addr125);
                     },§§goto(addr103))
                     {
                        this.§^N§ = this.§'!Q§.getItemByName("TextField_VsPositionHero") as §54§;
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§=^§ = this.§'!Q§.getItemByName("TextField_VsPositionEnemy") as §54§;
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop12;
                           }
                        }
                        while(true)
                        {
                           this.§9n§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicEnemy") as §7!p§;
                           loop6:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              this.§=8§ = this.§'!Q§.getItemByName("MovieClip_CrownHero") as §7!p§;
                              while(!_loc2_)
                              {
                                 this.§=l§ = this.§'!Q§.getItemByName("MovieClip_CrownEnemy") as §7!p§;
                                 do
                                 {
                                    this.§!`§ = this.§'!Q§.getItemByName("TextField_VsScore") as §54§;
                                    loop9:
                                    while(true)
                                    {
                                       this.§2o§ = this.§'!Q§.getItemByName("TextField_VsScoreEnemy") as §54§;
                                       addr125:
                                       while(true)
                                       {
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue loop9;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          this.§^!r§ = this.§'!Q§.getItemByName("TextField_NameHero") as §54§;
                                          while(!_loc2_)
                                          {
                                             this.§#P§ = this.§'!Q§.getItemByName("TextField_NameEnemy") as §54§;
                                             continue loop12;
                                          }
                                          §§goto(addr208);
                                       }
                                       continue loop6;
                                    }
                                 }
                                 while(!(_loc1_ || _loc2_));
                                 
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr69);
                        }
                        addr69:
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§#n§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr38:
                     this.§#n§.play();
                     if(_loc4_ || _loc3_)
                     {
                     }
                     addr71:
                     var _loc1_:MovieClip = this.§'!Q§.getItemByName("PlayerNameMask").mClip;
                     §§push((AngryBirdsFP11.sUserProgress as §#!6§).userName);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        this.§6!$§(_loc2_,this.§^!r§,_loc1_);
                        loop0:
                        for(; this.§8!U§; while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              break loop0;
                           }
                           continue loop0;
                        })
                        {
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        this.§6!$§(this.§8!U§.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
                        §§goto(addr132);
                     }
                  }
               }
               §§push(this.§0!b§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc1_)
                     {
                        §§push(this.§0!b§);
                     }
                  }
                  §§goto(addr71);
               }
               §§pop().play();
               §§goto(addr71);
            }
         }
         §§goto(addr38);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§#n§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§0!b§);
                     loop6:
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this.§0!b§);
                           loop7:
                           while(true)
                           {
                              §§pop().pause();
                              addr74:
                              while(true)
                              {
                                 §§push(this.§0!b§);
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§pop().§^!5§ = false;
                                    if(_loc2_)
                                    {
                                       addr35:
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr49:
                                             break loop6;
                                          }
                                          addr95:
                                          while(true)
                                          {
                                             §§push(this.§#n§);
                                             addr97:
                                             while(true)
                                             {
                                                §§pop().pause();
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(_loc2_)
                                          {
                                             continue loop5;
                                             §§goto(addr35);
                                          }
                                          addr89:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§#n§);
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr97);
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                        }
                        §§goto(addr74);
                     }
                     return;
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr49);
      }
      
      public function levelStarted(param1:§'!6§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§9!W§ = param2;
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
                        while(true)
                        {
                           this.§'!=§.setVisibility(false);
                           addr201:
                           while(_loc3_)
                           {
                              this.§[!+§ = param1;
                           }
                        }
                        addr105:
                        loop18:
                        while(true)
                        {
                           §§push(this.§#"§);
                           if(!_loc4_)
                           {
                              §§pop().y = this.§7!A§;
                              do
                              {
                                 this.§0!b§ = null;
                                 continue loop18;
                              }
                              while(!(_loc3_ || param2));
                              
                              return;
                           }
                           break;
                        }
                     }
                  }
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  this.§'b§.x = this.§@]§;
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr195);
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
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            §§push(this.§6!$§(_loc2_,this.§^!r§,_loc1_));
            if(_loc6_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               addr62:
               this.§`e§ = null;
            }
            §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§9!W§));
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && this))
            {
               this.§!!O§ = this.§[!+§.§=!0§();
               loop0:
               while(true)
               {
                  §§push(this.§!!O§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                           _loc3_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(this.§#"§);
                              if(!(_loc7_ && this))
                              {
                                 §§push(false);
                                 if(_loc6_)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(this.§"!C§);
                                          if(_loc6_)
                                          {
                                             §§push(false);
                                             if(!(_loc7_ && this))
                                             {
                                                §§pop().setVisibility(§§pop());
                                                loop4:
                                                while(!_loc7_)
                                                {
                                                   this.§'b§.x = this.§#"§.x;
                                                   loop16:
                                                   while(true)
                                                   {
                                                      addr137:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§^N§.setText(_loc3_.toString());
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop() > 0)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    §§push(AngryBirdsFP11.sUserProgress);
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       (§§pop() as §#!6§).§%N§(LevelManager.§"L§,_loc3_);
                                                                                       addr126:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr247:
                                                                                          §§push(AngryBirdsFP11.sUserProgress);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§#"§);
                                                                                             addr214:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                                addr215:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                   addr216:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§"!C§);
                                                                                                      addr208:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         addr209:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            break loop7;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr229:
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop().getEagleScoreForLevel(this.§9!W§));
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr264:
                                                                                       §§push(int(§§pop()));
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break loop7;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§7!e§(this.§!!O§);
                                                                     addr238:
                                                                     while(_loc6_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr234:
                                                               }
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         addr265:
                                                         var _loc5_:* = §§pop();
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr480:
                                                            §§push(this.§=8§);
                                                            §§push(_loc3_);
                                                            §§push(3);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§pop();
                                                                           addr509:
                                                                           §§push(_loc4_);
                                                                           §§push(0);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                              }
                                                                              addr524:
                                                                              §§pop();
                                                                              addr528:
                                                                              §§pop().setVisibility(_loc5_ > 0);
                                                                              addr525:
                                                                              addr526:
                                                                              addr529:
                                                                              §§push(_loc3_ > 0);
                                                                              if(_loc3_ > 0)
                                                                              {
                                                                                 addr475:
                                                                                 §§pop();
                                                                                 addr476:
                                                                                 §§push(_loc3_);
                                                                                 §§push(3);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    addr456:
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       addr458:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr461:
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(_loc4_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr422:
                                                                                                §§push(§§pop() > 0);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr435:
                                                                                                            if(!(_loc7_ && _loc1_))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr443:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!(_loc7_ && _loc1_))
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr396:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr398:
                                                                                                                                       §§push(this.§=8§);
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§pop().§>Z§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                          addr299:
                                                                                                                                          this.§'!=§.setVisibility(true);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                this.§@0§ = true;
                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr398);
                                                                                                                                                      }
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   addr348:
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr299);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr476);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr443);
                                                                                                                                                }
                                                                                                                                                §§goto(addr299);
                                                                                                                                             }
                                                                                                                                             §§goto(addr461);
                                                                                                                                          }
                                                                                                                                          addr415:
                                                                                                                                          §§goto(addr415);
                                                                                                                                       }
                                                                                                                                       §§goto(addr525);
                                                                                                                                    }
                                                                                                                                    §§push(this.§=8§);
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§pop().§=0§(§§pop());
                                                                                                                                                      §§goto(addr348);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr480);
                                                                                                                                                }
                                                                                                                                                §§goto(addr509);
                                                                                                                                             }
                                                                                                                                             §§goto(addr526);
                                                                                                                                          }
                                                                                                                                          §§goto(addr480);
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                    §§goto(addr398);
                                                                                                                                 }
                                                                                                                                 §§goto(addr456);
                                                                                                                              }
                                                                                                                              §§goto(addr422);
                                                                                                                           }
                                                                                                                           §§goto(addr435);
                                                                                                                        }
                                                                                                                        §§goto(addr476);
                                                                                                                     }
                                                                                                                     §§goto(addr422);
                                                                                                                  }
                                                                                                                  §§goto(addr525);
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                            §§goto(addr475);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                             §§goto(addr475);
                                                                                          }
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                       §§goto(addr525);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr525);
                                                                              }
                                                                              §§goto(addr456);
                                                                              addr527:
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                        addr516:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§goto(addr524);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr528);
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                            }
                                                            §§goto(addr524);
                                                         }
                                                         §§goto(addr475);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr137);
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr214);
                           }
                        }
                        §§goto(addr265);
                     }
                     §§goto(addr234);
                  }
               }
            }
            §§goto(addr162);
         }
         §§goto(addr62);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(Boolean(this.§[!+§.§6;§));
            if(_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr181:
                     while(true)
                     {
                        §§pop();
                        addr182:
                        while(true)
                        {
                           §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     addr181:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr181);
         }
         §§goto(addr172);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         if(_loc6_ || param1)
         {
            if(this.§`!i§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§`!i§ = param1;
                  while(true)
                  {
                     this.§!`§.setText(this.§4!1§(this.§`!i§));
                     loop2:
                     for(; !(_loc5_ && param2); if(!(_loc6_ || param1))
                     {
                        continue;
                     },if(!_loc5_)
                     {
                        return;
                     })
                     {
                        if(!this.§!!O§)
                        {
                           continue;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(this.§[!+§.§6;§));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr324:
                                       while(true)
                                       {
                                          §§push(§,!s§.§=!I§.objects.mSardineCanAdded);
                                          addr283:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr323:
                                 }
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop11:
                                          for(; _loc6_; if(_loc5_ && param1)
                                          {
                                             continue;
                                          },if(_loc6_)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                while(§§pop())
                                                {
                                                   if(!(_loc6_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr269);
                                                }
                                                addr155:
                                                §§push(Boolean(this.§!!O§));
                                                if(Boolean(this.§!!O§))
                                                {
                                                   addr161:
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§`!i§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§!!O§.§;!u§);
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            addr141:
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  addr71:
                                                                  §§push(this.§;!b§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(§§pop().length <= 5)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              addr90:
                                                                              §§push(this.§;!b§);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§push(§§pop().length > 0);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr106:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr109:
                                                                                             if(!(_loc5_ && param3))
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§push(!this.§`e§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr41:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  if(_loc6_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc6_ || param3)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr209:
                                                                                                                              this.§!!O§ = this.§[!+§.data[_loc4_];
                                                                                                                              §§goto(addr155);
                                                                                                                              addr216:
                                                                                                                           }
                                                                                                                           this.§ p§();
                                                                                                                           addr27:
                                                                                                                           return;
                                                                                                                           addr70:
                                                                                                                        }
                                                                                                                        §§goto(addr216);
                                                                                                                     }
                                                                                                                     addr154:
                                                                                                                     §§goto(addr71);
                                                                                                                  }
                                                                                                                  §§goto(addr109);
                                                                                                               }
                                                                                                               §§goto(addr70);
                                                                                                            }
                                                                                                            §§goto(addr27);
                                                                                                         }
                                                                                                         §§goto(addr155);
                                                                                                      }
                                                                                                      §§goto(addr161);
                                                                                                   }
                                                                                                   §§goto(addr106);
                                                                                                }
                                                                                                addr171:
                                                                                                §§goto(addr155);
                                                                                             }
                                                                                             §§goto(addr161);
                                                                                          }
                                                                                          §§goto(addr141);
                                                                                       }
                                                                                       §§goto(addr41);
                                                                                    }
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 §§goto(addr106);
                                                                              }
                                                                              addr222:
                                                                              §§pop().unshift(this.§!!O§);
                                                                              §§push(int(this.§[!+§.data.indexOf(this.§!!O§) - 1));
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr208:
                                                                                    addr207:
                                                                                    if(§§pop() >= 0)
                                                                                    {
                                                                                       §§goto(addr209);
                                                                                    }
                                                                                    this.§!!O§ = null;
                                                                                    §§goto(addr171);
                                                                                 }
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr207);
                                                                              addr225:
                                                                           }
                                                                           §§goto(addr109);
                                                                        }
                                                                        §§push(this.§;!b§);
                                                                     }
                                                                     §§pop().pop();
                                                                     §§goto(addr154);
                                                                  }
                                                                  §§goto(addr90);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr222);
                                                            §§push(this.§;!b§);
                                                         }
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr141);
                                                addr260:
                                             }
                                             §§goto(addr323);
                                          },§§goto(addr283))
                                          {
                                             §§pop();
                                             while(_loc6_ || this)
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§<5§);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                                if(_loc6_ || param1)
                                                {
                                                   return;
                                                }
                                             }
                                             §§goto(addr324);
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr260);
                                    }
                                    continue loop5;
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
      
      private function §7!e§(param1:§9?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr146:
                           while(true)
                           {
                              §§push(param1.§1<§ <= 3);
                              if(!(_loc2_ && param1))
                              {
                                 break;
                              }
                              continue loop9;
                           }
                        }
                        addr145:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              this.§=^§.setText(param1.§1<§.toString());
                              loop6:
                              do
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 this.§2o§.setText(this.§4!1§(param1.§;!u§));
                                 for(; !_loc2_; this.§3!X§(param1),if(_loc3_)
                                 {
                                    continue loop6;
                                 })
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              while(!(_loc3_ || this));
                              
                              §§goto(addr42);
                           }
                        }
                        while(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr145);
               }
            }
         }
         addr42:
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!p§ = null;
         for each(_loc2_ in [this.§"!C§,this.§`!&§,this.§"!C§])
         {
            if(_loc6_)
            {
               this.§"y§(_loc2_,param1,true);
            }
         }
      }
      
      private function §3!X§(param1:§9?§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§8@§.§<!u§(param1.userId));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(_loc4_ || _loc2_)
         {
            this.§8!U§ = param1;
         }
         do
         {
            this.§&S§();
            loop1:
            do
            {
               this.§'7§ = new §%j§(_loc3_,"",false,§14§.NORMAL);
               while(true)
               {
                  this.§ !E§(this.§9n§,this.§'7§);
                  while(!(_loc5_ && _loc2_))
                  {
                     this.§6!$§(param1.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
                     if(!(_loc5_ && this))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(_loc5_);
            
         }
         while(!(_loc4_ || this));
         
      }
      
      private function §6!$§(param1:String, param2:§54§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            do
            {
               if(§§pop().length > 6)
               {
                  if(!(_loc4_ && this))
                  {
                     param2.mClip.mask = param3;
                     addr118:
                     loop5:
                     while(true)
                     {
                        param3.visible = true;
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              param2.setText(param1);
                              if(_loc5_ || param3)
                              {
                                 addr43:
                                 if(!(_loc5_ || param1))
                                 {
                                    while(true)
                                    {
                                       if(_loc4_ && param2)
                                       {
                                          continue loop5;
                                       }
                                       param3.visible = false;
                                       §§goto(addr43);
                                    }
                                    addr90:
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(!(_loc4_ && param3))
                                 {
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr43);
                           }
                        }
                     }
                     addr118:
                  }
                  §§goto(addr118);
               }
               else
               {
                  param2.mClip.mask = null;
               }
               §§goto(addr90);
            }
            while(§§push(param1), !(_loc5_ || param3));
            
            return §§pop();
         }
         §§goto(addr118);
      }
      
      private function § !E§(param1:§7!p§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(!(_loc4_ && this))
               {
                  param1.mClip.addChild(param2);
               }
               if(_loc3_)
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
         if(_loc4_)
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
         if(!(_loc3_ && this))
         {
            this.§7!z§();
            do
            {
               this.§8D§ = new §%j§(_loc2_,"",false,§14§.NORMAL);
               do
               {
                  this.§ !E§(this.§"!a§,this.§8D§);
               }
               while(!_loc4_);
               
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      private function § !p§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§[!A§();
         }
      }
      
      private function §&S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§'7§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§'7§);
                     addr70:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      private function §7!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8D§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr59:
                     this.§8D§.dispose();
                     do
                     {
                        this.§8D§ = null;
                     }
                     while(!(_loc1_ || this));
                     
                     addr60:
                  }
                  §§goto(addr60);
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function set §9"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§<5§ = param1;
            do
            {
               §§push(this.§'!=§);
               §§push(this.§<5§);
               if(_loc3_ || _loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().setVisibility(§§pop());
            }
            while(!_loc3_);
            
         }
      }
      
      private function § p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`e§ = this.§;!b§.pop();
         }
         while(true)
         {
            this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§@]§ + 15},{"x":this.§@]§},0.5,§`!G§.§<W§);
            loop1:
            for(; _loc1_ || _loc1_; while(_loc1_ || _loc2_)
            {
               §-!Q§.§#3§("NextToBeat_Sound","ChannelPowerups");
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(_loc1_ || _loc1_)
               {
                  return;
               }
               §§goto(addr73);
            })
            {
               §§push(this.§0!b§);
               while(true)
               {
                  §§pop().onComplete = this.§"!Q§;
                  addr73:
                  while(true)
                  {
                     §§push(this.§0!b§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§pop().play();
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §"!Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || this)
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
                  if(!(_loc4_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this.§`!&§);
                        continue loop1;
                     }
                     continue loop0;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function § 2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#n§ = null;
            loop0:
            while(true)
            {
               this.§`e§ = null;
               do
               {
                  if(_loc1_ || _loc1_)
                  {
                     if(this.§;!b§.length <= 0)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(if(!(_loc2_ && _loc2_))
               {
                  this.§ p§();
               }, _loc2_);
               
               return;
            }
         }
         §§goto(addr60);
      }
      
      private function §`!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0!b§ = null;
            do
            {
               this.§`e§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      private function §4!1§(param1:int) : String
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
               loop6:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  if(!_loc8_)
                  {
                     continue loop0;
                  }
                  _loc2_ = §§pop();
                  if(_loc7_)
                  {
                     continue;
                  }
                  if(!(_loc7_ && _loc3_))
                  {
                     break loop0;
                  }
                  addr112:
                  while(true)
                  {
                     _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                     continue loop6;
                  }
               }
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           var _loc5_:int = 0;
                           if(_loc8_ || this)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc7_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(!_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr168:
                                          §§push(§§pop() + (_loc4_ + ","));
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    continue;
                                 }
                                 §§goto(addr168);
                              }
                           }
                           if(!_loc7_)
                           {
                              addr190:
                              §§push(_loc2_);
                              if(_loc8_ || _loc2_)
                              {
                                 addr198:
                                 §§push(§§pop().substr(0,_loc2_.length - 1));
                                 if(_loc8_ || _loc2_)
                                 {
                                    addr211:
                                    _loc2_ = §§pop();
                                 }
                                 break;
                              }
                              §§goto(addr211);
                           }
                           addr212:
                           §§push(_loc2_);
                           break;
                        }
                        §§goto(addr190);
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§push(3);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc8_ || this)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(false)
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    §§goto(addr212);
                                 }
                                 else
                                 {
                                    §§goto(addr198);
                                 }
                              }
                              §§goto(addr198);
                           }
                           break;
                        }
                     }
                     §§goto(addr211);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr112);
      }
      
      private function §"y§(param1:§7!p§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(_loc5_)
         {
            §§push(param1.§!!#§);
            while(true)
            {
               if(§§pop() == true)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§push(param1.§@$§(param2));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        addr78:
                        §§push(_loc4_ = §§pop());
                     }
                     if(§§pop() != "End")
                     {
                        §§goto(addr22);
                     }
                     else
                     {
                        addr22:
                     }
                     if(_loc5_)
                     {
                        param1.§!!#§ = false;
                     }
                     continue;
                  }
                  §§goto(addr78);
               }
               addr22:
               return;
            }
         }
         param1.setVisibility(false);
         §§goto(addr63);
      }
      
      private function §@!9§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§4!R§ = null;
         var _loc2_:§,!K§ = null;
         for each(_loc1_ in this.§[!+§.data)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(!(_loc1_ is §9?§))
               {
                  continue;
               }
            }
            _loc2_ = new §,!K§(_loc1_.userId,"",false,§14§.NORMAL);
            if(_loc6_ || this)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
