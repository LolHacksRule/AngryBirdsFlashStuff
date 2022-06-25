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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !$§ = [];
            while(true)
            {
               super();
               addr95:
               addr56:
               while(true)
               {
                  this.§5!P§ = param1;
                  addr91:
                  while(true)
                  {
                     this.§6!N§();
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               return;
               addr73:
            }
         }
         loop3:
         while(true)
         {
            this.§4!9§ = this.§&!0§.x;
            while(_loc3_)
            {
               this.§%n§ = this.§-!i§.y;
               if(!(_loc2_ && this))
               {
                  continue loop3;
               }
            }
            §§goto(addr95);
         }
         §§goto(addr73);
      }
      
      private function §6!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&!0§ = this.§5!P§.getItemByName("Container_VsHero") as §8;§;
            loop0:
            while(true)
            {
               this.§-!i§ = this.§5!P§.getItemByName("Container_VsEnemy") as §8;§;
               while(true)
               {
                  this.§?K§ = this.§5!P§.getItemByName("Container_Vs") as §8;§;
                  addr227:
                  while(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§#!I§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §§goto(addr43);
                  }
                  §§goto(addr73);
               }
               §§goto(addr51);
            }
            addr43:
            this.§#!I§.play();
            if(!(_loc3_ && this))
            {
               addr51:
               §§push(this.§-9§);
               if(_loc4_ || _loc1_)
               {
                  if(!§§pop())
                  {
                  }
                  §§goto(addr76);
               }
               §§pop().play();
            }
            addr76:
            if(!_loc3_)
            {
               addr73:
               §§push(this.§-9§);
            }
            var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
            §§push((AngryBirdsFP11.sUserProgress as §<[§).userName);
            if(!_loc3_)
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc1_))
            {
               this.§+J§(_loc2_,this.§!H§,_loc1_);
            }
            while(this.§!!5§)
            {
               if(!_loc4_)
               {
                  break;
               }
               addr139:
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               this.§+J§(this.§!!5§.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
               §§goto(addr139);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§#!I§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§-9§);
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr25:
                           return;
                        }
                        if(_loc2_)
                        {
                           addr74:
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§#!I§);
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 addr117:
                                 while(true)
                                 {
                                    §§pop().pause();
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                           §§push(this.§-9§);
                           loop7:
                           while(true)
                           {
                              §§pop().pause();
                              addr96:
                              while(true)
                              {
                                 §§push(this.§-9§);
                                 if(_loc2_ || this)
                                 {
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                        }
                        §§goto(addr96);
                     }
                     addr111:
                     while(true)
                     {
                        continue loop5;
                        §§goto(addr74);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr67);
      }
      
      public function levelStarted(param1:§9=§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<H§ = param2;
            while(true)
            {
               this.§0s§();
            }
            addr246:
         }
         while(true)
         {
            this.§6H§();
            loop2:
            for(; _loc3_; if(!(_loc3_ || _loc3_))
            {
               continue;
            },§§goto(addr116))
            {
               §§push(this.§-!i§);
               while(true)
               {
                  §§pop().setVisibility(true);
                  while(true)
                  {
                     this.§?K§.setVisibility(false);
                     while(true)
                     {
                        this.§<!3§ = param1;
                        while(true)
                        {
                           this.§4!Y§ = false;
                           loop7:
                           while(true)
                           {
                              this.§&!§ = null;
                              addr200:
                              while(true)
                              {
                                 this.§>!;§ = -1;
                                 continue loop7;
                              }
                           }
                           addr41:
                           if(_loc3_ || _loc3_)
                           {
                              return;
                           }
                        }
                        loop17:
                        for(; _loc3_ || param2; while(_loc3_ || param1)
                        {
                           if(!_loc4_)
                           {
                              this.§#!I§ = null;
                              §§goto(addr53);
                           }
                           §§goto(addr148);
                        })
                        {
                           this.§&!0§.x = this.§4!9§;
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr169);
                              addr53:
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.§-p§();
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop17;
                                 }
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr41);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr156);
                                 }
                                 else
                                 {
                                    while(!_loc4_)
                                    {
                                       this.§-9§ = null;
                                       continue loop17;
                                    }
                                    addr88:
                                 }
                                 §§goto(addr181);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr116:
                  §§push(this.§-!i§);
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  §§pop().y = this.§%n§;
                  §§goto(addr88);
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
            this.§>!G§();
         }
         var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
         §§push((AngryBirdsFP11.sUserProgress as §<[§).userName);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§+J§(_loc2_,this.§!H§,_loc1_));
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(_loc7_ || this)
            {
               this.§&!§ = null;
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§<H§));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && _loc3_))
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
                     if(!(_loc6_ && this))
                     {
                        if(!_loc6_)
                        {
                           _loc3_ = §§pop();
                           loop2:
                           while(true)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(this.§-!i§);
                                 if(!_loc6_)
                                 {
                                    §§push(false);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       loop3:
                                       for(; !_loc6_; if(!(_loc7_ || _loc3_))
                                       {
                                          continue;
                                       },if(false)
                                       {
                                          §§goto(addr129);
                                       },§§goto(addr283))
                                       {
                                          §§push(this.§5!=§);
                                          if(_loc7_)
                                          {
                                             §§push(false);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§pop().setVisibility(§§pop());
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr233:
                                                   while(true)
                                                   {
                                                      addr129:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§<!Y§.setText(_loc3_.toString());
                                                         addr135:
                                                         addr295:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(§§pop() > 0)
                                                                  {
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        §§push(AngryBirdsFP11.sUserProgress);
                                                                        if(!_loc6_)
                                                                        {
                                                                           (§§pop() as §<[§).§2!@§(LevelManager.§4Y§,_loc3_);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr285:
                                                                           §§push(§§pop().getEagleScoreForLevel(this.§<H§));
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           var _loc5_:* = §§pop();
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(this.§3!D§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr506:
                                                                                 §§push(_loc3_);
                                                                                 §§push(3);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr545:
                                                                                                §§push(_loc4_);
                                                                                                §§push(0);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr548:
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      addr557:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr569:
                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                         addr570:
                                                                                                         §§push(_loc3_ > 0);
                                                                                                         if(_loc3_ > 0)
                                                                                                         {
                                                                                                            addr499:
                                                                                                            §§pop();
                                                                                                            addr500:
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr477:
                                                                                                               §§push(§§pop() <= 3);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr481:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr484:
                                                                                                                        if(!(_loc6_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr492:
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr448:
                                                                                                                              §§push(0);
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr458:
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             addr469:
                                                                                                                                             §§pop();
                                                                                                                                             addr470:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc7_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr418:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr420:
                                                                                                                                                               §§push(this.§3!D§);
                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§2!?§(["Gold","Silver","Bronze"][_loc3_ - 1]);
                                                                                                                                                                  addr318:
                                                                                                                                                                  this.§?K§.setVisibility(true);
                                                                                                                                                                  addr323:
                                                                                                                                                                  addr437:
                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§4!Y§ = true;
                                                                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr570);
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr323);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr492);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr437);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr388:
                                                                                                                                                                           §§goto(addr318);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr500);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr470);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr420);
                                                                                                                                                               }
                                                                                                                                                               addr567:
                                                                                                                                                               §§goto(addr569);
                                                                                                                                                               §§push(_loc5_ > 0);
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§3!D§);
                                                                                                                                                            if(_loc7_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§=!g§(§§pop());
                                                                                                                                                                           §§goto(addr318);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr506);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr545);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr567);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr545);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr420);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr477);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr458);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr469);
                                                                                                                                                }
                                                                                                                                                §§goto(addr448);
                                                                                                                                             }
                                                                                                                                             §§goto(addr492);
                                                                                                                                          }
                                                                                                                                          §§goto(addr418);
                                                                                                                                       }
                                                                                                                                       §§goto(addr481);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 §§goto(addr569);
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                           §§goto(addr500);
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr569);
                                                                                                         }
                                                                                                         §§goto(addr481);
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                }
                                                                                                §§goto(addr567);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr557);
                                                                                    }
                                                                                    §§goto(addr569);
                                                                                 }
                                                                                 §§goto(addr548);
                                                                              }
                                                                              §§goto(addr545);
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                     }
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr283:
                                                                  §§push(AngryBirdsFP11.sUserProgress);
                                                                  §§goto(addr285);
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                addr232:
                                             }
                                             while(true)
                                             {
                                                this.§&!0§.x = this.§-!i§.x;
                                                continue loop2;
                                                §§goto(addr135);
                                             }
                                          }
                                          else
                                          {
                                             addr231:
                                             while(true)
                                             {
                                             }
                                             addr231:
                                          }
                                          §§goto(addr232);
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop().setVisibility(§§pop());
                                       addr239:
                                       while(true)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             §§push(this.§5!=§);
                                          }
                                          else
                                          {
                                             addr262:
                                             while(true)
                                             {
                                                this.§!S§(this.§@E§);
                                                continue loop1;
                                             }
                                             addr262:
                                          }
                                       }
                                    }
                                    addr238:
                                    §§goto(addr231);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr237:
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr239);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              _loc3_ = §§pop();
                              §§goto(addr257);
                           }
                           addr256:
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr295);
                  }
                  §§goto(addr262);
               }
            }
         }
         §§goto(addr257);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                        loop3:
                        while(true)
                        {
                           §§push(§ _§.§!6§.objects.mSardineCanAdded);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§+M§);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr96:
                                          while(_loc2_)
                                          {
                                          }
                                          continue loop4;
                                          addr59:
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(!§§pop())
                                          {
                                             loop12:
                                             while(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.initialize();
                                                   while(true)
                                                   {
                                                      addr31:
                                                      while(true)
                                                      {
                                                         this.updateAnimations(param1);
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc3_ && this)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(this.§&!§ == null);
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr52:
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               §§goto(addr59);
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         this.§?K§.setVisibility(false);
                                                      }
                                                   }
                                                }
                                                if(_loc2_ || this)
                                                {
                                                   §§push(true);
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                             loop16:
                                             while(true)
                                             {
                                                addr49:
                                                while(true)
                                                {
                                                   §§goto(addr52);
                                                   continue loop16;
                                                }
                                             }
                                             addr91:
                                          }
                                          §§goto(addr31);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr49);
                                 }
                                 §§goto(addr100);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr137);
               }
            }
         }
         §§goto(addr91);
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(this.§1!c§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§1!c§ = param1;
                  addr370:
                  loop1:
                  while(true)
                  {
                     this.§<!#§.setText(this.§1!5§(this.§1!c§));
                     loop2:
                     while(true)
                     {
                        if(_loc6_ || param1)
                        {
                           if(!this.§@E§)
                           {
                              if(_loc6_ || param3)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 break loop2;
                                 loop7:
                                 while(!(_loc5_ && param2))
                                 {
                                    §§push(§ _§.§!6§.objects.mSardineCanAdded);
                                    if(_loc6_ || param3)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr292:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc6_ || param3))
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(this.§+M§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            addr241:
                                                            if(_loc5_ && param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr315:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               addr314:
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr291:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            return;
                                                         }
                                                         if(_loc5_ && param3)
                                                         {
                                                            §§goto(addr292);
                                                         }
                                                      }
                                                      addr167:
                                                      §§push(Boolean(this.§@E§));
                                                      if(Boolean(this.§@E§))
                                                      {
                                                         addr183:
                                                         §§pop();
                                                         addr184:
                                                         §§push(this.§1!c§);
                                                         if(_loc6_ || param3)
                                                         {
                                                            §§push(this.§@E§.§0!F§);
                                                            if(_loc6_ || param3)
                                                            {
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr143:
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr145:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr59:
                                                                              §§push(this.§ !$§);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && param3))
                                                                                    {
                                                                                       if(§§pop().length <= 5)
                                                                                       {
                                                                                          addr81:
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             addr93:
                                                                                             §§push(this.§ !$§.length > 0);
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr109:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr112:
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(!this.§&!§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr39);
                                                                                                               }
                                                                                                               §§goto(addr93);
                                                                                                            }
                                                                                                            §§goto(addr109);
                                                                                                         }
                                                                                                         addr191:
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                      §§goto(addr143);
                                                                                                   }
                                                                                                   addr39:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  this.§-D§();
                                                                                                                  §§goto(addr56);
                                                                                                               }
                                                                                                               §§goto(addr184);
                                                                                                            }
                                                                                                            §§goto(addr81);
                                                                                                         }
                                                                                                         §§goto(addr112);
                                                                                                      }
                                                                                                      §§goto(addr56);
                                                                                                   }
                                                                                                   addr56:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr166:
                                                                                                      §§goto(addr59);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr167);
                                                                                          addr221:
                                                                                       }
                                                                                       addr165:
                                                                                       this.§ !$§.pop();
                                                                                       §§goto(addr166);
                                                                                    }
                                                                                    addr227:
                                                                                    §§pop().unshift(this.§@E§);
                                                                                    §§push(int(this.§<!3§.data.indexOf(this.§@E§) - 1));
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       addr210:
                                                                                       addr209:
                                                                                       addr211:
                                                                                       if((_loc4_ = §§pop()) >= 0)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             this.§@E§ = this.§<!3§.data[_loc4_];
                                                                                          }
                                                                                          §§goto(addr221);
                                                                                       }
                                                                                       this.§@E§ = null;
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                    §§goto(addr210);
                                                                                    addr230:
                                                                                 }
                                                                                 §§goto(addr165);
                                                                              }
                                                                              §§goto(addr93);
                                                                           }
                                                                           §§goto(addr230);
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     §§goto(addr227);
                                                                     §§push(this.§ !$§);
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                }
                                                §§goto(addr315);
                                             }
                                          }
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr291);
                                 }
                              }
                           }
                           break;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr314);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr370);
      }
      
      private function §!S§(param1:§-!?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%!#§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§ N§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§ N§ > 0);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr139:
                           while(!_loc2_)
                           {
                              §§push(param1.§ N§ <= 3);
                              if(_loc3_)
                              {
                              }
                              continue loop8;
                           }
                           continue loop1;
                        }
                        addr138:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue loop0;
                        }
                        loop6:
                        while(true)
                        {
                           this.§[!O§.setText(param1.§ N§.toString());
                           addr71:
                           addr106:
                           loop7:
                           while(_loc3_ || this)
                           {
                              this.§&!w§.setText(this.§1!5§(param1.§0!F§));
                              while(true)
                              {
                                 this.§=!S§(param1);
                                 if(_loc3_ || param1)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop7;
                                 }
                              }
                              return;
                           }
                           while(_loc3_ || param1)
                           {
                              continue loop6;
                              §§goto(addr71);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr53);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[I§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in [this.§5!=§,this.§9<§,this.§5!=§])
         {
            if(_loc5_ || _loc3_)
            {
               this.§?!=§(_loc2_,param1,true);
            }
         }
      }
      
      private function §=!S§(param1:§-!?§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§3?§.§"!r§(param1.userId));
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:String = param1.userId;
         if(_loc5_ || this)
         {
            this.§!!5§ = param1;
            loop0:
            do
            {
               this.§0s§();
               while(true)
               {
                  this.§@3§ = new §null §(_loc3_,"",false,§%!5§.NORMAL);
                  while(!(_loc4_ && _loc2_))
                  {
                     this.§%!-§(this.§;O§,this.§@3§);
                     do
                     {
                        this.§+J§(param1.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
                     }
                     while(_loc4_);
                     
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc4_);
            
         }
      }
      
      private function §+J§(param1:String, param2:§"j§, param3:MovieClip) : String
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
                     param3.visible = false;
                     loop2:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || param2)
                           {
                              continue;
                           }
                           loop3:
                           while(true)
                           {
                              param3.visible = true;
                              addr98:
                              while(true)
                              {
                                 param2.mClip.mask = param3;
                                 continue loop3;
                              }
                           }
                        }
                        while(_loc5_ && param2)
                        {
                        }
                        addr93:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  while(_loc5_);
                  
                  continue;
               }
               §§goto(addr98);
            }
            while(§§push(param1), _loc5_);
            
            return §§pop();
         }
         §§goto(addr93);
      }
      
      private function §%!-§(param1:§[I§, param2:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc3_ && this)
               {
                  break;
               }
               if(!(_loc3_ && param1))
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
      
      private function §-p§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push((AngryBirdsFP11.sUserProgress as §<[§).avatarString);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.sUserProgress as §<[§).§0u§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§6H§();
            do
            {
               this.§2b§ = new §null §(_loc2_,"",false,§%!5§.NORMAL);
               do
               {
                  this.§%!-§(this.§!!6§,this.§2b§);
               }
               while(!(_loc4_ || _loc3_));
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §76§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-p§();
         }
      }
      
      private function §0s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§@3§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@3§);
                     addr80:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§@3§ = null;
                        }
                        while(_loc1_ && _loc1_);
                        
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr78:
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr78);
      }
      
      private function §6H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2b§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr59:
                     this.§2b§.dispose();
                  }
                  do
                  {
                     this.§2b§ = null;
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  addr44:
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr44);
      }
      
      public function set §5!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+M§ = param1;
         }
         do
         {
            §§push(this.§?K§);
            §§push(this.§+M§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().setVisibility(§§pop());
         }
         while(!(_loc3_ || param1));
         
      }
      
      private function §-D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&!§ = this.§ !$§.pop();
            while(true)
            {
               this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§ + 15},{"x":this.§4!9§},0.5,§,!b§.§8!k§);
            }
            addr104:
         }
         loop1:
         while(true)
         {
            §§push(this.§-9§);
            while(true)
            {
               §§pop().onComplete = this.§%9§;
               loop3:
               while(true)
               {
                  §§push(this.§-9§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().play();
                  for(; _loc1_; § !Q§.playSound("NextToBeat_Sound","ChannelPowerups"),if(_loc1_)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                     }
                     continue loop3;
                  })
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr104);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §%9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§-9§ = null;
            loop0:
            while(true)
            {
               §§push(this.§9<§);
               while(true)
               {
                  §§pop().§2!?§("Start");
                  loop4:
                  while(!(_loc4_ && this))
                  {
                     §§push(true);
                     while(true)
                     {
                        §§pop().§;J§ = §§pop();
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(this.§9<§);
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop4;
                           }
                           §§push(true);
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§pop().setVisibility(§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 addr44:
                              }
                              else
                              {
                                 §§push(this.§ !$§);
                                 if(_loc3_ || _loc1_)
                                 {
                                    var _loc1_:§-!?§ = §§pop().length > 0 ? this.§ !$§[this.§ !$§.length - 1] : this.§@E§;
                                    if(_loc3_ || this)
                                    {
                                       addr469:
                                       addr481:
                                       addr480:
                                       if(this.§&!§.§ N§ == 1 || _loc1_ == null)
                                       {
                                          addr470:
                                          this.§-!i§.setVisibility(false);
                                          this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§-!i§.mClip.x},null,0.5);
                                          addr461:
                                          if(_loc4_)
                                          {
                                             §§goto(addr483);
                                          }
                                          addr430:
                                          this.§-9§.onComplete = this.§2!K§;
                                          addr425:
                                          this.§-9§.play();
                                          addr420:
                                          this.§3!D§.§2!?§("Gold");
                                          addr413:
                                          this.§<!Y§.setText("1");
                                          addr401:
                                          this.§3!D§.setVisibility(true);
                                          addr433:
                                          if(!(_loc3_ || _loc1_))
                                          {
                                             §§goto(addr433);
                                          }
                                          return;
                                          addr421:
                                          addr419:
                                          addr400:
                                          addr426:
                                          addr415:
                                          addr474:
                                       }
                                       this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§},null,0.5);
                                       addr396:
                                       §§push(this.§-9§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop().onComplete = null;
                                             addr378:
                                             §§push(this.§-9§);
                                             if(!_loc4_)
                                             {
                                                §§pop().play();
                                                this.§!S§(_loc1_);
                                                addr347:
                                                addr363:
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr332:
                                                      _loc2_ = _loc1_.§ N§ + 1;
                                                      addr333:
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            addr317:
                                                            §§push(this.§3!D§);
                                                            §§push(_loc2_ <= 3);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               addr323:
                                                               if(!_loc4_)
                                                               {
                                                                  addr295:
                                                                  §§push(_loc2_);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr299:
                                                                     §§push(§§pop() > 0);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr305:
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 §§pop();
                                                                                 addr313:
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(3);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr250:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr252:
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§3!D§);
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push("Gold");
                                                                                                               if(_loc3_ || _loc1_)
                                                                                                               {
                                                                                                                  §§pop().§2!?§(null[_loc2_ - 1]);
                                                                                                                  addr292:
                                                                                                                  §§push(this.§<!Y§);
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§pop().setText(_loc2_.toString());
                                                                                                                     addr213:
                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                     {
                                                                                                                        this.§#!I§ = §,!b§.§<d§.§>a§(this.§-!i§.mClip,{"y":this.§%n§},{"y":-150},2,§,!b§.§8!k§);
                                                                                                                        addr197:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr159:
                                                                                                                           this.§#!I§.onComplete = this.§^!x§;
                                                                                                                           addr162:
                                                                                                                           if(!(_loc4_ && _loc1_))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§#!I§);
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             §§pop().play();
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr461);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr378);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr323);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr292);
                                                                                                                                                }
                                                                                                                                                §§goto(addr213);
                                                                                                                                             }
                                                                                                                                             §§goto(addr162);
                                                                                                                                          }
                                                                                                                                          §§goto(addr159);
                                                                                                                                       }
                                                                                                                                       §§goto(addr470);
                                                                                                                                    }
                                                                                                                                    §§goto(addr421);
                                                                                                                                 }
                                                                                                                                 §§goto(addr347);
                                                                                                                              }
                                                                                                                              §§goto(addr313);
                                                                                                                           }
                                                                                                                           §§goto(addr197);
                                                                                                                        }
                                                                                                                        §§goto(addr252);
                                                                                                                     }
                                                                                                                     §§goto(addr363);
                                                                                                                  }
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr420);
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                             §§goto(addr482);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr469);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr426);
                                                            }
                                                            §§goto(addr401);
                                                            addr342:
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr474);
                                                }
                                                §§goto(addr433);
                                             }
                                             §§goto(addr469);
                                          }
                                          §§goto(addr430);
                                       }
                                       §§goto(addr425);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr88);
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                     while(true)
                     {
                        §§goto(addr44);
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §^!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#!I§ = null;
            loop0:
            while(true)
            {
               this.§&!§ = null;
               while(this.§ !$§.length > 0)
               {
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  addr68:
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         this.§-D§();
         §§goto(addr68);
      }
      
      private function §2!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-9§ = null;
         }
         do
         {
            this.§&!§ = null;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function §1!5§(param1:int) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(§§pop().length % 3 > 0)
            {
               loop1:
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  addr121:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc7_)
                     {
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        §§push(§§pop().slice(_loc2_.length % 3));
                     }
                     _loc2_ = §§pop();
                     if(_loc8_ || _loc3_)
                     {
                        if(_loc8_)
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
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           addr140:
                           var _loc5_:int = 0;
                           if(_loc8_ || _loc3_)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_)
                              {
                                 loop4:
                                 while(§§hasnext(_loc6_,_loc5_))
                                 {
                                    §§push(§§nextvalue(_loc5_,_loc6_));
                                    if(!_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc8_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() + (_loc4_ + ","));
                                             }
                                             addr168:
                                          }
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 addr187:
                                 if(!_loc7_)
                                 {
                                    addr190:
                                    §§push(_loc2_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       break;
                                    }
                                    addr211:
                                    return §§pop();
                                    addr212:
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr190);
                     }
                     else
                     {
                        _loc3_.push(_loc2_.substr(0,3));
                        if(_loc8_ || this)
                        {
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§push(3);
                              if(_loc8_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(!_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       continue;
                                    }
                                    §§goto(addr140);
                                 }
                                 break;
                              }
                              addr199:
                              §§push(§§pop().substr(§§pop(),_loc2_.length - 1));
                              if(!(_loc7_ && param1))
                              {
                                 §§goto(addr211);
                              }
                           }
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr190);
                  }
                  break;
               }
               §§goto(addr199);
            }
         }
         §§goto(addr121);
      }
      
      private function §?!=§(param1:§[I§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!(_loc6_ && param2))
         {
            §§push(param1.§;J§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  while(true)
                  {
                     §§push(param1.§+#§(param2));
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(_loc5_ || param3)
                        {
                           addr88:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() != "End")
                        {
                           return;
                        }
                        addr27:
                        addr27:
                        if(!(_loc6_ && this))
                        {
                           param1.§;J§ = false;
                        }
                        continue loop0;
                     }
                     §§goto(addr88);
                  }
                  addr75:
               }
               §§goto(addr27);
            }
         }
         §§goto(addr60);
      }
      
      private function §>!G§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§9!d§ = null;
         var _loc2_:§0z§ = null;
         for each(_loc1_ in this.§<!3§.data)
         {
            if(_loc5_)
            {
               if(!(_loc1_ is §-!?§))
               {
                  continue;
               }
            }
            _loc2_ = new §0z§(_loc1_.userId,"",false,§%!5§.NORMAL);
            if(_loc5_ || this)
            {
               _loc2_.dispose();
            }
         }
      }
   }
}
