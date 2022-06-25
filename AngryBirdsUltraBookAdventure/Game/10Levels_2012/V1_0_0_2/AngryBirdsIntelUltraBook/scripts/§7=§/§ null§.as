package §7=§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §3!8§.§%!5§;
   import §3!8§.§0z§;
   import §3!8§.§null §;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §6!M§.§-!?§;
   import §6!M§.§9!d§;
   import §8u§.§3?§;
   import §8u§.§9=§;
   import §9Y§.§9j§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class § null§
   {
       
      
      private var §5!P§:§'!^§;
      
      private var §<!3§:§9=§;
      
      private var §#!I§:§4!Z§;
      
      private var §-9§:§4!Z§;
      
      private var §4!9§:Number;
      
      private var §%n§:Number;
      
      private var §@3§:§0z§;
      
      private var §2b§:§null §;
      
      private var §4!Y§:Boolean = false;
      
      private var §+M§:Boolean;
      
      private var §@E§:§-!?§;
      
      private var §1!c§:int;
      
      private var §&!§:§-!?§;
      
      private var §>!;§:int = -1;
      
      private var § !$§:Array;
      
      private var §<H§:String;
      
      private var §!!5§:§-!?§;
      
      private var §?K§:§8;§;
      
      private var §&!0§:§8;§;
      
      private var §-!i§:§9j§;
      
      private var §5!=§:§[I§;
      
      private var §9<§:§[I§;
      
      private var §!!6§:§[I§;
      
      private var §;O§:§[I§;
      
      private var §3!D§:§[I§;
      
      private var §%!#§:§[I§;
      
      private var §<!#§:§"j§;
      
      private var §&!w§:§"j§;
      
      private var §!H§:§"j§;
      
      private var §1!<§:§"j§;
      
      private var §<!Y§:§"j§;
      
      private var §[!O§:§"j§;
      
      public function § null§(param1:§'!^§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !$§ = [];
            while(true)
            {
               super();
               addr83:
               if(_loc2_ || param1)
               {
                  this.§6!N§();
                  loop3:
                  do
                  {
                     this.§4!9§ = this.§&!0§.x;
                     while(!_loc3_)
                     {
                        this.§%n§ = this.§-!i§.y;
                        if(_loc2_ || _loc3_)
                        {
                           continue loop3;
                        }
                     }
                     addr76:
                     addr94:
                     while(_loc2_ || param1)
                     {
                        §§goto(addr83);
                     }
                     while(true)
                     {
                        this.§5!P§ = param1;
                        §§goto(addr76);
                     }
                  }
                  while(_loc3_);
                  
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §6!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§&!0§ = this.§5!P§.getItemByName("Container_VsHero") as §8;§;
            while(true)
            {
               this.§-!i§ = this.§5!P§.getItemByName("Container_VsEnemy") as §8;§;
               while(!(_loc1_ && _loc1_))
               {
                  this.§?K§ = this.§5!P§.getItemByName("Container_Vs") as §8;§;
                  while(true)
                  {
                     this.§5!=§ = this.§5!P§.getItemByName("MovieClip_VsAnimation") as §[I§;
                     loop3:
                     while(true)
                     {
                        this.§9<§ = this.§5!P§.getItemByName("MovieClip_Boom") as §[I§;
                        while(true)
                        {
                           this.§!!6§ = this.§5!P§.getItemByName("MovieClip_VsProfilePicHero") as §[I§;
                           while(true)
                           {
                              this.§;O§ = this.§5!P§.getItemByName("MovieClip_VsProfilePicEnemy") as §[I§;
                              loop6:
                              while(true)
                              {
                                 this.§3!D§ = this.§5!P§.getItemByName("MovieClip_CrownHero") as §[I§;
                                 addr184:
                                 while(true)
                                 {
                                    this.§%!#§ = this.§5!P§.getItemByName("MovieClip_CrownEnemy") as §[I§;
                                    continue loop6;
                                 }
                              }
                           }
                           while(!(_loc1_ && _loc1_))
                           {
                              this.§[!O§ = this.§5!P§.getItemByName("TextField_VsPositionEnemy") as §"j§;
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr83);
                           }
                        }
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr244);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§#!I§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr33:
                     this.§#!I§.play();
                     if(!(_loc3_ && _loc2_))
                     {
                        addr41:
                        §§push(this.§-9§);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              addr51:
                              if(!_loc3_)
                              {
                                 addr48:
                                 §§push(this.§-9§);
                              }
                              var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
                              §§push((AngryBirdsFP11.sUserProgress as §<[§).userName);
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(§§pop());
                              }
                              var _loc2_:* = §§pop();
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.§+J§(_loc2_,this.§!H§,_loc1_);
                                 loop0:
                                 for(; this.§!!5§; while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 })
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    }
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 this.§+J§(this.§!!5§.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
                                 §§goto(addr127);
                              }
                           }
                           §§goto(addr51);
                        }
                        §§pop().play();
                        §§goto(addr51);
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr51);
               }
               §§goto(addr41);
            }
            §§goto(addr33);
         }
         §§goto(addr51);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§#!I§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#!I§);
                     addr116:
                     loop6:
                     while(true)
                     {
                        §§pop().pause();
                        addr117:
                        addr104:
                        addr106:
                        while(true)
                        {
                           §§push(this.§#!I§);
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        §§pop().§-3§ = false;
                        addr108:
                        while(!_loc1_)
                        {
                           §§goto(addr117);
                           §§goto(addr104);
                        }
                     }
                     addr42:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  §§push(this.§-9§);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              §§push(this.§-9§);
                              addr75:
                              while(true)
                              {
                                 §§pop().pause();
                              }
                           }
                           addr73:
                        }
                        while(_loc1_ || _loc2_)
                        {
                           §§push(this.§-9§);
                           if(_loc1_ || _loc1_)
                           {
                              §§pop().§-3§ = false;
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr42);
                           }
                           else
                           {
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr106);
                     }
                     break;
                  }
                  §§goto(addr75);
                  §§goto(addr108);
               }
               addr24:
               return;
            }
            §§goto(addr116);
         }
         §§goto(addr73);
      }
      
      public function levelStarted(param1:§9=§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§<H§ = param2;
            loop0:
            while(true)
            {
               this.§0s§();
               loop1:
               while(true)
               {
                  this.§6H§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§-!i§);
                     loop3:
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        addr244:
                        while(true)
                        {
                           this.§?K§.setVisibility(false);
                           addr236:
                           while(!_loc4_)
                           {
                              this.§<!3§ = param1;
                              loop6:
                              for(; _loc3_ || param2; while(true)
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    continue loop1;
                                 }
                                 continue loop6;
                                 addr110:
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                              },continue loop1)
                              {
                                 this.§4!Y§ = false;
                                 while(true)
                                 {
                                    this.§&!§ = null;
                                    continue loop6;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        §§push(this.§-!i§);
                        if(!(_loc3_ || param2))
                        {
                           continue;
                        }
                        §§pop().y = this.§%n§;
                        loop19:
                        for(; !_loc4_; loop20:
                        while(true)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              continue loop19;
                           }
                           addr59:
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.§#!I§ = null;
                                 addr127:
                                 while(!_loc4_)
                                 {
                                    this.§-p§();
                                    if(_loc3_ || param2)
                                    {
                                       continue loop20;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§&!0§.x = this.§4!9§;
                                    addr103:
                                    addr184:
                                    while(_loc3_ || this)
                                    {
                                       §§goto(addr110);
                                       §§goto(addr59);
                                    }
                                    while(true)
                                    {
                                       this.§ !$§ = [];
                                       addr177:
                                       while(!_loc4_)
                                       {
                                          §§goto(addr170);
                                          §§push(this.§5!=§);
                                          break loop19;
                                       }
                                       continue loop0;
                                       §§goto(addr103);
                                    }
                                 }
                                 addr127:
                              }
                              break;
                           }
                           §§goto(addr103);
                        },§§goto(addr164))
                        {
                           if(_loc3_ || param1)
                           {
                              this.§-9§ = null;
                              continue;
                           }
                           while(true)
                           {
                              §§push(this.§5!=§);
                              loop14:
                              while(true)
                              {
                                 §§pop().§2!?§("Start");
                                 addr164:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop14;
                                    }
                                    §§goto(addr208);
                                 }
                              }
                           }
                        }
                        while(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              this.§1!c§ = -1;
                              §§goto(addr127);
                           }
                           else
                           {
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr177);
                     }
                  }
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  this.§>!;§ = -1;
                  §§goto(addr184);
               }
            }
         }
         §§goto(addr127);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc6_ || this)
         {
            this.§>!G§();
         }
         var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §<[§).userName);
         if(_loc6_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§+J§(_loc2_,this.§!H§,_loc1_));
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(!_loc7_)
            {
               this.§&!§ = null;
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§<H§));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            this.§@E§ = this.§<!3§.§=>§();
            loop0:
            while(true)
            {
               §§push(this.§@E§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     if(_loc6_)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(this.§-!i§);
                              if(_loc6_ || this)
                              {
                                 §§push(false);
                                 if(!_loc7_)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§pop().setVisibility(§§pop());
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this.§5!=§);
                                       addr225:
                                       while(true)
                                       {
                                          §§push(true);
                                          addr226:
                                          while(true)
                                          {
                                             §§pop().setVisibility(§§pop());
                                             loop9:
                                             while(true)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   this.§<!Y§.setText(_loc3_.toString());
                                                   while(true)
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         if(!(_loc6_ || _loc1_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() > 0)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(AngryBirdsFP11.sUserProgress);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        (§§pop() as §<[§).§2!@§(LevelManager.§4Y§,_loc3_);
                                                                        addr107:
                                                                        if(!(_loc6_ || _loc1_))
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              addr262:
                                                                              §§push(AngryBirdsFP11.sUserProgress);
                                                                           }
                                                                           addr121:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§!S§(this.§@E§);
                                                                              continue loop1;
                                                                           }
                                                                           addr251:
                                                                        }
                                                                     }
                                                                     §§push(§§pop().getEagleScoreForLevel(this.§<H§));
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     var _loc5_:* = §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(this.§3!D§);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(3);
                                                                              if(_loc6_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc6_ || _loc1_)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr556:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr563:
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr560:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                     }
                                                                                                                     addr560:
                                                                                                                  }
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              loop28:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop29:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop30:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop31:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             loop32:
                                                                                                                                             for(; _loc6_; while(!(_loc7_ && this))
                                                                                                                                             {
                                                                                                                                                §§goto(addr430);
                                                                                                                                                §§push(0);
                                                                                                                                                §§goto(addr468);
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                §§push(3);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   addr430:
                                                                                                                                                   loop40:
                                                                                                                                                   while(!(_loc7_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         loop41:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(!(_loc6_ || _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr372);
                                                                                                                                                                                 continue loop40;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop32;
                                                                                                                                                                              addr468:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                        continue loop28;
                                                                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop41;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr479:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr478:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr478);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr477:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3!D§);
                                                                                                                                                                     }
                                                                                                                                                                     addr398:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§3!D§);
                                                                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§=!g§(§§pop());
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop20;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr560);
                                                                                                                                                                        addr400:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        addr562:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr561:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr400);
                                                                                                                                                               }
                                                                                                                                                               continue loop19;
                                                                                                                                                               addr396:
                                                                                                                                                            }
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr476);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr563:
                                                                                                               }
                                                                                                               §§goto(addr563);
                                                                                                            }
                                                                                                         }
                                                                                                         addr555:
                                                                                                      }
                                                                                                      §§goto(addr563);
                                                                                                   }
                                                                                                   §§goto(addr562);
                                                                                                }
                                                                                                §§goto(addr561);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr555);
                                                                                       }
                                                                                       §§goto(addr563);
                                                                                    }
                                                                                    §§goto(addr556);
                                                                                 }
                                                                                 §§goto(addr563);
                                                                              }
                                                                              §§goto(addr562);
                                                                           }
                                                                        }
                                                                        §§goto(addr560);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr107);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                            break;
                                                         }
                                                         addr244:
                                                         loop8:
                                                         while(!_loc6_)
                                                         {
                                                            continue loop1;
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop8;
                                                            }
                                                         }
                                                         §§push(this.§-!i§);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop9;
                                                         }
                                                         addr153:
                                                      }
                                                   }
                                                   addr279:
                                                   §§goto(addr280);
                                                }
                                                addr170:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                   §§goto(addr107);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr232:
                              }
                              while(true)
                              {
                                 §§goto(addr232);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr243);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr279);
                  }
                  §§goto(addr251);
               }
            }
         }
         §§goto(addr121);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(this.§<!3§.§2Q§));
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
                        addr162:
                        while(true)
                        {
                           §§push(§ _§.§!6§.objects.mSardineCanAdded);
                           addr142:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr32:
                              if(_loc3_ || _loc3_)
                              {
                                 return §§pop();
                              }
                           }
                        }
                     }
                     addr161:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr154:
                              while(true)
                              {
                                 §§push(this.§+M§);
                                 if(_loc3_)
                                 {
                                    continue loop7;
                                 }
                                 addr119:
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§?K§.setVisibility(false);
                                       }
                                       §§push(true);
                                       addr136:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§4!Y§);
                                          addr54:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc3_ || param1)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr162);
                                       }
                                       addr51:
                                    }
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr119);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            if(this.§1!c§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§1!c§ = param1;
                  loop1:
                  while(true)
                  {
                     this.§<!#§.setText(this.§1!5§(this.§1!c§));
                     loop2:
                     for(; this.§@E§; if(!_loc5_)
                     {
                        continue;
                     },if(_loc5_)
                     {
                        §§goto(addr286);
                        §§push(§ _§.§!6§.objects.mSardineCanAdded);
                     })
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(this.§<!3§.§2Q§));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(this.§+M§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr255:
                                                      if(_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr286:
                                                      }
                                                   }
                                                   continue loop4;
                                                   addr300:
                                                }
                                                else
                                                {
                                                   addr310:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop11;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                             addr311:
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || param3)
                                                   {
                                                      return;
                                                   }
                                                   break loop2;
                                                }
                                                §§goto(addr300);
                                             }
                                             else if(!(_loc6_ && param3))
                                             {
                                                addr280:
                                                break;
                                             }
                                             §§goto(addr311);
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§push(Boolean(this.§@E§));
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop16:
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
                                                            §§push(this.§1!c§);
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(this.§@E§.§0!F§);
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        loop19:
                                                                        while(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ !$§);
                                                                                       if(!(_loc5_ || this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().length > 0);
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc5_ || param2))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(_loc6_ && this)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      addr129:
                                                                                                      §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!this.§&!§);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                         §§goto(addr129);
                                                                                                      }
                                                                                                   }
                                                                                                   addr120:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_ && param3)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc6_ && param2)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         if(!(_loc5_ || param1))
                                                                                                         {
                                                                                                            addr187:
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            this.§-D§();
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr204:
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(_loc6_ && param2)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                         addr225:
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§goto(addr120);
                                                                                          }
                                                                                          continue loop16;
                                                                                          addr101:
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(§§pop().length <= 5)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§push(this.§ !$§);
                                                                                       }
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§pop().pop();
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr231:
                                                                                          §§pop().unshift(this.§@E§);
                                                                                          §§push(_loc4_ = this.§<!3§.data.indexOf(this.§@E§) - 1);
                                                                                          break loop18;
                                                                                          addr234:
                                                                                       }
                                                                                       §§goto(addr187);
                                                                                    }
                                                                                    addr218:
                                                                                    this.§@E§ = this.§<!3§.data[_loc4_];
                                                                                    §§goto(addr225);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§ !$§);
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  addr217:
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§goto(addr218);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§@E§ = null;
                                                                     §§goto(addr204);
                                                                  }
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 §§goto(addr310);
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
         §§goto(addr280);
      }
      
      private function §!S§(param1:§-!?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§%!#§);
            while(true)
            {
               §§pop().setVisibility(param1.§ N§ <= 3);
               while(true)
               {
                  §§push(param1.§ N§ > 0);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.§[!O§.setText(param1.§ N§.toString());
                                 §§goto(addr84);
                              }
                           }
                           §§goto(addr106);
                        }
                        addr104:
                     }
                     §§goto(addr149);
                  }
               }
            }
         }
         addr84:
         loop9:
         while(true)
         {
            this.§&!w§.setText(this.§1!5§(param1.§0!F§));
            while(!_loc3_)
            {
               this.§=!S§(param1);
               if(!(_loc3_ && _loc2_))
               {
                  addr39:
                  if(!(_loc3_ && param1))
                  {
                     addr46:
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           break loop9;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(param1.§ N§ <= 3);
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop2;
                           }
                           addr149:
                           while(true)
                           {
                              §§pop();
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     addr106:
                     while(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                        §§goto(addr46);
                     }
                     continue loop1;
                  }
                  continue loop8;
               }
            }
         }
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[I§ = null;
         for each(_loc2_ in [this.§5!=§,this.§9<§,this.§5!=§])
         {
            if(!(_loc5_ && this))
            {
               this.§?!=§(_loc2_,param1,true);
            }
         }
      }
      
      private function §=!S§(param1:§-!?§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§3?§.§"!r§(param1.userId));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(!(_loc5_ && _loc3_))
         {
            this.§!!5§ = param1;
            while(true)
            {
               this.§0s§();
               while(!_loc5_)
               {
                  this.§@3§ = new §null §(_loc3_,"",false,§%!5§.NORMAL);
                  loop2:
                  while(!(_loc5_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§%!-§(this.§;O§,this.§@3§);
                        do
                        {
                           this.§+J§(param1.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
                        }
                        while(!_loc4_);
                        
                        if(!_loc5_)
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
         §§goto(addr102);
      }
      
      private function §+J§(param1:String, param2:§"j§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
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
                     if(_loc5_ || this)
                     {
                        if(_loc5_)
                        {
                           param3.visible = false;
                        }
                        else
                        {
                           while(true)
                           {
                              param2.mClip.mask = param3;
                              addr108:
                              while(true)
                              {
                                 param3.visible = true;
                                 addr99:
                                 while(true)
                                 {
                                    addr32:
                                    while(true)
                                    {
                                       param2.setText(param1);
                                       if(!(_loc5_ || param1))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr104:
                        }
                        while(true)
                        {
                           §§goto(addr32);
                        }
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr104);
               §§push(param1);
               if(!(_loc4_ && param1))
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr108);
      }
      
      private function §%!-§(param1:§[I§, param2:MovieClip) : void
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
               if(_loc4_ || this)
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
      
      private function §-p§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push((AngryBirdsFP11.sUserProgress as §<[§).avatarString);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §<[§).§0u§);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§6H§();
            do
            {
               this.§2b§ = new §null §(_loc2_,"",false,§%!5§.NORMAL);
               do
               {
                  this.§%!-§(this.§!!6§,this.§2b§);
               }
               while(_loc3_ && _loc2_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §76§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§-p§();
         }
      }
      
      private function §0s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@3§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@3§);
                     addr49:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§@3§ = null;
                        }
                        while(!_loc1_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr47:
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr47);
      }
      
      private function §6H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§2b§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr70:
                     this.§2b§.dispose();
                     do
                     {
                        this.§2b§ = null;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     addr71:
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function set §5!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+M§ = param1;
            do
            {
               §§push(this.§?K§);
               §§push(this.§+M§);
               if(_loc2_ || _loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().setVisibility(§§pop());
            }
            while(!_loc2_);
            
         }
      }
      
      private function §-D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!§ = this.§ !$§.pop();
            while(true)
            {
               this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§ + 15},{"x":this.§4!9§},0.5,§,!b§.§8!k§);
               loop1:
               for(; !(_loc1_ && _loc1_); if(_loc2_ || this)
               {
                  addr55:
                  return;
               })
               {
                  §§push(this.§-9§);
                  loop2:
                  while(true)
                  {
                     §§pop().onComplete = this.§%9§;
                     addr69:
                     while(true)
                     {
                        §§push(this.§-9§);
                        if(!_loc1_)
                        {
                           §§pop().play();
                           do
                           {
                              § !Q§.playSound("NextToBeat_Sound","ChannelPowerups");
                           }
                           while(!(_loc2_ || this));
                           
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §%9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§-9§ = null;
         }
         loop0:
         while(true)
         {
            §§push(this.§9<§);
            loop1:
            while(true)
            {
               §§pop().§2!?§("Start");
               while(_loc3_)
               {
                  while(true)
                  {
                     §§push(this.§9<§);
                     loop4:
                     while(_loc3_)
                     {
                        §§push(true);
                        while(true)
                        {
                           §§pop().§;J§ = §§pop();
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           §§push(this.§9<§);
                           if(_loc3_ || _loc1_)
                           {
                              continue;
                           }
                           continue loop4;
                        }
                        var _loc1_:§-!?§ = this.§ !$§[this.§ !$§.length - 1];
                        if(!(_loc4_ && this))
                        {
                           addr484:
                           addr496:
                           addr495:
                           if(this.§&!§.§ N§ == 1 || _loc1_ == null)
                           {
                              addr485:
                              this.§-!i§.setVisibility(false);
                              this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§-!i§.mClip.x},null,0.5);
                              addr445:
                              this.§-9§.onComplete = this.§2!K§;
                              addr448:
                              if(_loc4_)
                              {
                                 §§goto(addr498);
                              }
                              addr440:
                              this.§-9§.play();
                              addr435:
                              this.§3!D§.§2!?§("Gold");
                              addr421:
                              this.§<!Y§.setText("1");
                              addr436:
                              if(_loc4_ && _loc3_)
                              {
                                 §§goto(addr436);
                              }
                              addr416:
                              this.§3!D§.setVisibility(true);
                              addr113:
                              return;
                              addr415:
                              addr478:
                              addr434:
                              addr489:
                              addr441:
                              addr417:
                           }
                           this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§},null,0.5);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr377:
                              §§push(this.§-9§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop().onComplete = null;
                                 addr386:
                                 §§push(this.§-9§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().play();
                                       this.§!S§(_loc1_);
                                       addr373:
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr337:
                                             _loc2_ = _loc1_.§ N§ + 1;
                                             addr338:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr310:
                                                §§push(this.§3!D§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(_loc2_ <= 3);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      addr323:
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr281:
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            addr284:
                                                            §§push(§§pop() > 0);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr303:
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           addr306:
                                                                           §§push(_loc2_);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(3);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    if(_loc3_ || _loc1_)
                                                                                    {
                                                                                       addr246:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr248:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.§3!D§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      §§push("Gold");
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop().§2!?§(null[_loc2_ - 1]);
                                                                                                         addr278:
                                                                                                         §§push(this.§<!Y§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§pop().setText(_loc2_.toString());
                                                                                                            addr206:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§#!I§ = §,!b§.§<d§.§>a§(this.§-!i§.mClip,{"y":this.§%n§},{"y":-150},2,§,!b§.§8!k§);
                                                                                                               addr168:
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    addr129:
                                                                                                                                    this.§#!I§.onComplete = this.§^!x§;
                                                                                                                                    addr132:
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(this.§#!I§);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§pop().play();
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr132);
                                                                                                                                                }
                                                                                                                                                §§goto(addr113);
                                                                                                                                             }
                                                                                                                                             §§goto(addr129);
                                                                                                                                          }
                                                                                                                                          §§goto(addr373);
                                                                                                                                       }
                                                                                                                                       §§goto(addr306);
                                                                                                                                    }
                                                                                                                                    §§goto(addr168);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr386);
                                                                                                                           }
                                                                                                                           §§goto(addr373);
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     §§goto(addr248);
                                                                                                                  }
                                                                                                                  §§goto(addr278);
                                                                                                               }
                                                                                                               §§goto(addr206);
                                                                                                            }
                                                                                                            §§goto(addr338);
                                                                                                         }
                                                                                                         §§goto(addr421);
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr485);
                                                                                          }
                                                                                          §§goto(addr448);
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr284);
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               §§goto(addr495);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr478);
                                                   }
                                                   §§goto(addr416);
                                                }
                                                §§goto(addr434);
                                             }
                                             §§goto(addr484);
                                          }
                                          §§goto(addr489);
                                       }
                                       §§goto(addr441);
                                    }
                                    §§goto(addr445);
                                 }
                                 §§goto(addr377);
                              }
                              §§goto(addr440);
                           }
                           §§goto(addr417);
                        }
                        §§goto(addr306);
                     }
                     continue loop1;
                     if(!(_loc3_ || _loc2_))
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     §§push(this.§ !$§);
                     if(_loc3_)
                     {
                        if(§§pop().length > 0)
                        {
                           §§goto(addr91);
                        }
                        else
                        {
                           §§push(this.§@E§);
                        }
                     }
                     §§goto(addr103);
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §^!x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#!I§ = null;
         }
         loop0:
         while(true)
         {
            this.§&!§ = null;
            do
            {
               if(!_loc2_)
               {
                  if(this.§ !$§.length <= 0)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!_loc2_)
            {
               this.§-D§();
            }, !_loc1_);
            
            return;
         }
      }
      
      private function §2!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-9§ = null;
         }
         do
         {
            this.§&!§ = null;
         }
         while(_loc2_);
         
      }
      
      private function §1!5§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(_loc7_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               if(!(_loc8_ && _loc3_))
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     §§push(§§pop().slice(_loc2_.length % 3));
                  }
                  _loc2_ = §§pop();
                  if(!(_loc8_ && _loc2_))
                  {
                     addr102:
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
                  if(_loc7_ || this)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc7_ || param1)
                        {
                           addr154:
                           var _loc5_:int = 0;
                           if(!_loc8_)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc7_ || _loc3_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(_loc7_ || this)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + (_loc4_ + ","));
                                    }
                                 }
                                 _loc2_ = §§pop();
                              }
                           }
                           if(!(_loc8_ && this))
                           {
                              addr219:
                              §§push(_loc2_);
                              if(_loc7_ || _loc2_)
                              {
                                 addr227:
                                 §§push(§§pop().substr(0,_loc2_.length - 1));
                                 if(_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 break;
                              }
                              break;
                           }
                           §§push(_loc2_);
                           break;
                        }
                        §§goto(addr219);
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        if(_loc7_ || this)
                        {
                           §§push(_loc2_);
                           if(!(_loc8_ && this))
                           {
                              §§push(3);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(!(_loc8_ && this))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc7_)
                                    {
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr227);
                           }
                           break;
                        }
                     }
                     §§goto(addr154);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr102);
      }
      
      private function §?!=§(param1:§[I§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc5_ && param1))
         {
            §§push(param1.§;J§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.§+#§(param2));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr96:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() == "End")
                        {
                           while(true)
                           {
                              param1.§;J§ = false;
                              continue loop0;
                              addr54:
                              if(_loc6_ || param2)
                              {
                                 if(_loc6_)
                                 {
                                    param1.setVisibility(false);
                                    addr76:
                                    if(_loc6_ || param2)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           break;
                           addr100:
                        }
                        break;
                     }
                     §§goto(addr96);
                  }
               }
               addr28:
               return;
            }
         }
         §§goto(addr100);
      }
      
      private function §>!G§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§9!d§ = null;
         var _loc2_:§0z§ = null;
         var _loc3_:int = 0;
         for each(_loc1_ in this.§<!3§.data)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(!(_loc1_ is §-!?§))
               {
                  continue;
               }
            }
            _loc2_ = new §0z§(_loc1_.userId,"",false,§%!5§.NORMAL);
            if(_loc5_ || _loc2_)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
