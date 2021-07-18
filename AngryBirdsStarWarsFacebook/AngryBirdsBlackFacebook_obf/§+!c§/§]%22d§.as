package §+!c§
{
   import § "4§.§7q§;
   import §"a§.§6#!§;
   import §"k§.§%!8§;
   import §"k§.§5"2§;
   import §"k§.§]"V§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §,"N§.§@#B§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7"a§.§@4§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]"d§
   {
       
      
      private var §+!b§:§+"2§;
      
      private var § F§:§6#!§;
      
      private var §?!R§:Boolean = false;
      
      private var §@;§:§ #^§;
      
      private var §-"]§:§%!8§;
      
      private var §6#X§:§[#R§;
      
      private var §=v§:§[#R§;
      
      private var §4">§:Number;
      
      private var §9"D§:Number;
      
      private var §]!B§:§5"$§;
      
      private var §3e§:§?@§;
      
      private var §5!S§:Boolean = false;
      
      private var §,-§:Boolean;
      
      private var §2"%§:§5"2§;
      
      private var §9"d§:int;
      
      private var §]"n§:§5"2§;
      
      private var §'b§:int = -1;
      
      private var §5E§:Vector.<§5"2§>;
      
      private var §7"5§:String;
      
      private var §?J§:§5"2§;
      
      private var §2#>§:§ #^§;
      
      private var §="c§:§ #^§;
      
      private var §0!6§:§ #^§;
      
      private var §0!U§:§0"$§;
      
      private var §-v§:§0"$§;
      
      private var §<!t§:§0"$§;
      
      private var §8!f§:§0"$§;
      
      private var §>! §:§0"$§;
      
      private var §""&§:§0"$§;
      
      private var §;^§:§6!D§;
      
      private var §6!+§:§6!D§;
      
      private var § "a§:§6!D§;
      
      private var §#""§:§6!D§;
      
      private var §;!,§:§6!D§;
      
      private var §;!!§:§6!D§;
      
      private var §,#^§:Boolean;
      
      public function §]"d§(param1:§ #^§, param2:§+"2§, param3:§6#!§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§+!b§ = param2;
               addr107:
               while(true)
               {
                  this.§ F§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§@;§ = param1;
                     addr87:
                     while(true)
                     {
                        this.§'!v§();
                        continue loop2;
                     }
                  }
               }
            }
            addr110:
         }
         while(true)
         {
            this.§4">§ = this.§="c§.x;
            for(; !_loc5_; this.§9"D§ = this.§0!6§.y,if(!(_loc4_ || this))
            {
               continue;
            },§§goto(addr41))
            {
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr110);
            }
            §§goto(addr107);
         }
         §§goto(addr60);
      }
      
      public function get §9#F§() : Boolean
      {
         return this.§,-§;
      }
      
      public function get §3#2§() : Boolean
      {
         return this.§,#^§;
      }
      
      private function §'!v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2#>§ = this.§@;§.getItemByName("Container_Vs") as § #^§;
            loop0:
            while(true)
            {
               this.§0!U§ = this.§@;§.getItemByName("MovieClip_VsAnimation") as §0"$§;
               while(true)
               {
                  this.§-v§ = this.§@;§.getItemByName("MovieClip_Boom") as §0"$§;
                  loop2:
                  while(true)
                  {
                     this.§="c§ = this.§@;§.getItemByName("Container_VsHero") as § #^§;
                     loop3:
                     while(true)
                     {
                        this.§<!t§ = this.§@;§.getItemByName("MovieClip_VsProfilePicHero") as §0"$§;
                        loop4:
                        while(!_loc1_)
                        {
                           this.§>! § = this.§@;§.getItemByName("MovieClip_CrownHero") as §0"$§;
                           while(!_loc1_)
                           {
                              this.§;^§ = this.§@;§.getItemByName("TextField_VsScore") as §6!D§;
                              loop6:
                              while(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 this.§ "a§ = this.§@;§.getItemByName("TextField_NameHero") as §6!D§;
                                 loop7:
                                 while(true)
                                 {
                                    this.§;!,§ = this.§@;§.getItemByName("TextField_VsPositionHero") as §6!D§;
                                    while(true)
                                    {
                                       this.§0!6§ = this.§@;§.getItemByName("Container_VsEnemy") as § #^§;
                                       while(_loc2_ || this)
                                       {
                                          if(!_loc1_)
                                          {
                                             this.§8!f§ = this.§@;§.getItemByName("MovieClip_VsProfilePicEnemy") as §0"$§;
                                             loop10:
                                             while(true)
                                             {
                                                this.§""&§ = this.§@;§.getItemByName("MovieClip_CrownEnemy") as §0"$§;
                                                addr109:
                                                loop11:
                                                while(true)
                                                {
                                                   this.§6!+§ = this.§@;§.getItemByName("TextField_VsScoreEnemy") as §6!D§;
                                                   loop12:
                                                   while(_loc2_)
                                                   {
                                                      this.§#""§ = this.§@;§.getItemByName("TextField_NameEnemy") as §6!D§;
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop12;
                                                         addr87:
                                                         this.§;!!§ = this.§@;§.getItemByName("TextField_VsPositionEnemy") as §6!D§;
                                                         if(!(_loc1_ && this))
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr56);
                                             }
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                          }
                                          continue loop4;
                                          if(_loc2_)
                                          {
                                             addr56:
                                          }
                                          continue loop6;
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr109);
      }
      
      private function initialize() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         if(_loc7_)
         {
            this.§6!u§();
            if(!_loc6_)
            {
               this.§]"n§ = null;
            }
         }
         var _loc1_:MovieClip = this.§@;§.getItemByName("PlayerNameMask").mClip;
         §§push(§@#B§(§4#;§.singleton.dataModel).§9!N§.name);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc6_)
         {
            this.§46§(_loc2_,this.§ "a§,_loc1_);
         }
         §§push(§4#;§.singleton.dataModel.userProgress.getScoreForLevel(this.§7"5§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || _loc1_)
         {
            this.§2"%§ = this.§-"]§.§1!N§();
            loop0:
            while(true)
            {
               §§push(this.§2"%§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(1);
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§0!6§);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(false);
                              if(_loc7_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§0!U§);
                                    if(!(_loc6_ && _loc1_))
                                    {
                                       §§push(false);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§pop().setVisibility(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(this.§="c§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(true);
                                                         if(_loc7_)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            addr239:
                                                            while(true)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  this.§;!,§.setText(_loc4_.toString());
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop() > 0)
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr113:
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           §§push(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(this.§7"5§));
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr325:
                                                                              §§push(int(§§pop()));
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr150:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(this.§0!U§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 addr244:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    addr245:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_ || _loc1_)
                                                                                          {
                                                                                             §§push(this.§="c§);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§@"l§(this.§2"%§);
                                                                                                continue loop1;
                                                                                             }
                                                                                             addr300:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr295:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§0!6§);
                                                                                             addr258:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(true);
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                          addr295:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr528:
                                                                     §§push(this.§>! §);
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && _loc1_))
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr554:
                                                                                       §§push(_loc3_);
                                                                                       §§push(0);
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          addr563:
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr566:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                }
                                                                                                addr584:
                                                                                                §§pop().setVisibility(§§pop());
                                                                                                addr585:
                                                                                                §§push(_loc4_ > 0);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr516:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr517:
                                                                                                      §§pop();
                                                                                                      addr518:
                                                                                                      if(!(_loc6_ && _loc1_))
                                                                                                      {
                                                                                                         addr482:
                                                                                                         §§push(_loc4_);
                                                                                                         §§push(3);
                                                                                                         if(!(_loc6_ && _loc1_))
                                                                                                         {
                                                                                                            addr490:
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               addr499:
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr507:
                                                                                                                     §§pop();
                                                                                                                     addr508:
                                                                                                                     §§push(_loc3_ > 0);
                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              addr477:
                                                                                                                              §§pop();
                                                                                                                              addr478:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr433:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr439:
                                                                                                                                                            §§push(this.§>! §);
                                                                                                                                                            if(_loc7_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§-"I§(["Gold","Silver","Bronze"][_loc4_ - 1]);
                                                                                                                                                               addr454:
                                                                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr341:
                                                                                                                                                                  this.§2#>§.setVisibility(true);
                                                                                                                                                                  addr346:
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§5!S§ = true;
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr346);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr454);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc7_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr341);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr518);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr508);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr478);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr454);
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§>! §);
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§0#6§(§§pop());
                                                                                                                                                                     §§goto(addr341);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr554);
                                                                                                                                                               }
                                                                                                                                                               addr582:
                                                                                                                                                               §§goto(addr584);
                                                                                                                                                               §§push(§§pop() > 0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr528);
                                                                                                                                                         }
                                                                                                                                                         addr581:
                                                                                                                                                         §§goto(addr582);
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr439);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr490);
                                                                                                                                                }
                                                                                                                                                §§goto(addr507);
                                                                                                                                             }
                                                                                                                                             §§goto(addr477);
                                                                                                                                          }
                                                                                                                                          §§goto(addr482);
                                                                                                                                       }
                                                                                                                                       §§goto(addr507);
                                                                                                                                    }
                                                                                                                                    §§goto(addr584);
                                                                                                                                 }
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              §§goto(addr507);
                                                                                                                           }
                                                                                                                           §§goto(addr433);
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                     §§goto(addr477);
                                                                                                                  }
                                                                                                                  §§goto(addr433);
                                                                                                               }
                                                                                                               §§goto(addr516);
                                                                                                            }
                                                                                                            §§goto(addr517);
                                                                                                         }
                                                                                                         §§goto(addr584);
                                                                                                      }
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                   §§goto(addr499);
                                                                                                }
                                                                                                §§goto(addr517);
                                                                                             }
                                                                                             §§goto(addr584);
                                                                                          }
                                                                                          §§pop();
                                                                                          §§goto(addr581);
                                                                                       }
                                                                                       §§goto(addr582);
                                                                                    }
                                                                                    §§goto(addr566);
                                                                                 }
                                                                                 §§goto(addr584);
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr584);
                                                                        }
                                                                        §§goto(addr563);
                                                                     }
                                                                     §§goto(addr582);
                                                                  }
                                                                  §§goto(addr439);
                                                               }
                                                            }
                                                         }
                                                         addr238:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr238);
                                                      }
                                                   }
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr239);
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr243);
                                 }
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr258);
                        }
                     }
                  }
                  §§goto(addr300);
               }
            }
         }
         §§goto(addr295);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6#X§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6#X§);
                     addr229:
                     while(true)
                     {
                        §§pop().stop();
                        addr230:
                        while(true)
                        {
                           this.§6#X§ = null;
                           addr206:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr227:
               }
               loop1:
               while(true)
               {
                  §§push(this.§=v§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§=v§);
                           addr200:
                           while(true)
                           {
                              §§pop().stop();
                              addr201:
                              while(true)
                              {
                                 this.§=v§ = null;
                                 addr186:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr198:
                     }
                     loop3:
                     while(true)
                     {
                        this.§2#>§.setVisibility(true);
                        while(true)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue loop3;
                           }
                           if(_loc1_)
                           {
                              §§push(this.§="c§);
                              while(true)
                              {
                                 §§pop().x = this.§4">§;
                                 while(true)
                                 {
                                    §§push(this.§="c§);
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§pop().setVisibility(true);
                                    while(_loc1_ || _loc1_)
                                    {
                                       §§push(this.§0!6§);
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().y = this.§9"D§;
                                          addr137:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr227);
                           }
                        }
                        §§goto(addr230);
                     }
                  }
                  §§goto(addr200);
               }
            }
            §§goto(addr229);
         }
         §§goto(addr139);
      }
      
      public function activate(param1:§6#!§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            this.§?!R§ = true;
            loop0:
            while(true)
            {
               this.§,#^§ = false;
               loop1:
               while(true)
               {
                  this.§ F§ = param1;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§6#X§);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop())
                           {
                              continue loop2;
                           }
                           loop5:
                           while(true)
                           {
                              §§push(this.§=v§);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 addr44:
                                 break loop3;
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(this.§=v§);
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr69:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                              if(_loc4_)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           §§pop().play();
                           §§goto(addr44);
                        }
                        else
                        {
                           while(true)
                           {
                              §§pop().play();
                           }
                           addr68:
                        }
                        §§goto(addr69);
                     }
                     var _loc2_:MovieClip = this.§@;§.getItemByName("PlayerNameMask").mClip;
                     §§push(§@#B§(§4#;§.singleton.dataModel).§9!N§.name);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop());
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        this.§46§(_loc3_,this.§ "a§,_loc2_);
                     }
                     addr173:
                     if(this.§?J§)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc5_ && _loc2_)
                           {
                              §§goto(addr173);
                           }
                           this.§46§(this.§?J§.userName,this.§#""§,this.§@;§.getItemByName("EnemyNameMask").mClip);
                        }
                     }
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr68);
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!R§ = false;
         }
         loop0:
         while(true)
         {
            §§push(this.§6#X§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  continue;
               }
               while(true)
               {
                  §§push(this.§=v§);
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        return;
                     }
                     if(_loc1_)
                     {
                        addr31:
                        if(_loc2_ && _loc1_)
                        {
                           continue loop0;
                        }
                        addr50:
                        this.§=v§.pause();
                     }
                     if(_loc1_)
                     {
                        break;
                     }
                     continue;
                     addr19:
                  }
                  §§goto(addr50);
               }
               §§goto(addr19);
               addr23:
            }
            else
            {
               while(true)
               {
                  §§pop().pause();
               }
               addr84:
            }
            while(true)
            {
               §§goto(addr23);
            }
         }
      }
      
      public function levelStarted(param1:§%!8§, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7"5§ = param2;
            loop0:
            while(true)
            {
               this.§+!C§();
               loop1:
               while(true)
               {
                  this.§&1§();
                  while(true)
                  {
                     §§push(this.§0!6§);
                     while(true)
                     {
                        §§pop().setVisibility(true);
                        addr233:
                        while(_loc4_)
                        {
                           this.§2#>§.setVisibility(false);
                           continue loop0;
                        }
                        continue loop1;
                        addr103:
                        §§push(this.§0!6§);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§pop().y = this.§9"D§;
                        loop19:
                        while(true)
                        {
                           this.§=v§ = null;
                           addr71:
                           addr108:
                           loop20:
                           while(!(_loc3_ && param1))
                           {
                              addr78:
                              if(_loc4_ || param1)
                              {
                                 this.§6#X§ = null;
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          addr59:
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop19;
                                    }
                                    continue loop20;
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr103);
                                    §§goto(addr59);
                                 }
                                 §§goto(addr233);
                                 addr101:
                              }
                              §§goto(addr147);
                           }
                           addr214:
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§="c§.x = this.§4">§;
                              §§goto(addr101);
                              §§goto(addr71);
                           }
                           while(true)
                           {
                              this.§5!S§ = false;
                              §§goto(addr202);
                              §§goto(addr108);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      public function run(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§?!R§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
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
                        addr214:
                        while(true)
                        {
                           §§push(Boolean(this.§-"]§.isLoading));
                        }
                     }
                     addr213:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    this.§,#^§ = false;
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.§5!S§);
                                          loop12:
                                          while(!(_loc2_ && this))
                                          {
                                             addr94:
                                             if(_loc3_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(!(_loc2_ && param1))
                                                   {
                                                      this.initialize();
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§,-§);
                                                      if(!(_loc3_ || this))
                                                      {
                                                         break loop12;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break loop12;
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr214);
                                                   addr112:
                                                   addr195:
                                                }
                                                while(true)
                                                {
                                                   this.§[!2§(param1);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc2_ && param1)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop10;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr112);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§,#^§ = true;
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr121);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr94);
                                                }
                                                addr194:
                                             }
                                             §§goto(addr195);
                                             §§push(this.§]"n§ == null);
                                             if(_loc3_ || this)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   return §§pop();
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop5;
                                          addr87:
                                       }
                                       §§goto(addr214);
                                    }
                                 }
                              }
                              §§goto(addr174);
                           }
                           addr172:
                        }
                        §§goto(addr194);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §0r§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_ || _loc3_)
         {
            if(this.§9"d§ != param1)
            {
               while(true)
               {
                  this.§9"d§ = param1;
                  loop1:
                  while(_loc3_ || _loc3_)
                  {
                     this.§;^§.setText(this.§8"N§(this.§9"d§));
                     loop2:
                     while(_loc3_ || param1)
                     {
                        if(this.§2"%§)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(this.§-"]§.isLoading));
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
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(this.§ F§.isGameOverBlocked());
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                         addr270:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr276:
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§push(this.§,-§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr239:
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               addr162:
                                                               §§push(Boolean(this.§2"%§));
                                                               if(Boolean(this.§2"%§))
                                                               {
                                                                  addr178:
                                                                  §§pop();
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(this.§9"d§);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§push(this.§2"%§.§@"0§);
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              addr146:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 addr147:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr84:
                                                                                       if(this.§5E§.length <= 1)
                                                                                       {
                                                                                          addr90:
                                                                                          §§push(this.§5E§.length > 0);
                                                                                          §§push(this.§5E§.length > 0);
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr104:
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr109:
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(!this.§]"n§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr50);
                                                                                                               }
                                                                                                               §§goto(addr146);
                                                                                                            }
                                                                                                            §§goto(addr90);
                                                                                                         }
                                                                                                         §§goto(addr104);
                                                                                                      }
                                                                                                      addr161:
                                                                                                      §§goto(addr84);
                                                                                                   }
                                                                                                   §§goto(addr162);
                                                                                                }
                                                                                                §§goto(addr178);
                                                                                             }
                                                                                             addr50:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  this.§[_§();
                                                                                                                  §§goto(addr81);
                                                                                                               }
                                                                                                               §§goto(addr198);
                                                                                                            }
                                                                                                            §§goto(addr193);
                                                                                                         }
                                                                                                         §§goto(addr147);
                                                                                                      }
                                                                                                      §§goto(addr90);
                                                                                                   }
                                                                                                   §§goto(addr109);
                                                                                                }
                                                                                                §§goto(addr81);
                                                                                             }
                                                                                             addr81:
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr197:
                                                                                                addr196:
                                                                                                if(_loc2_ >= 0)
                                                                                                {
                                                                                                   addr198:
                                                                                                   this.§2"%§ = this.§-"]§.data[_loc2_];
                                                                                                   §§goto(addr162);
                                                                                                   addr205:
                                                                                                }
                                                                                                this.§2"%§ = null;
                                                                                                addr193:
                                                                                                §§goto(addr162);
                                                                                                addr216:
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr162);
                                                                                       }
                                                                                       this.§5E§.pop();
                                                                                       §§goto(addr161);
                                                                                    }
                                                                                    addr215:
                                                                                    _loc2_ = this.§-"]§.data.indexOf(this.§2"%§) - 1;
                                                                                    §§goto(addr216);
                                                                                    addr225:
                                                                                 }
                                                                                 §§goto(addr178);
                                                                              }
                                                                              this.§5E§.unshift(this.§2"%§);
                                                                              §§goto(addr225);
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            addr275:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr275);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr270);
                                 }
                              }
                           }
                        }
                        addr308:
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private function §@"l§(param1:§5"2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§""&§);
            loop0:
            while(true)
            {
               §§pop().setVisibility(param1.§9!<§ <= 3);
               loop1:
               while(true)
               {
                  §§push(param1.§9!<§ > 0);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this.§""&§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§pop().§-"I§(["Gold","Silver","Bronze"][param1.§9!<§ - 1]);
                                 while(!(_loc2_ && param1))
                                 {
                                    while(true)
                                    {
                                    }
                                    addr46:
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          this.§?7§(param1);
                                          addr60:
                                          if(!_loc3_)
                                          {
                                             while(_loc3_)
                                             {
                                                §§goto(addr46);
                                                §§goto(addr60);
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                this.§6!+§.setText(this.§8"N§(param1.§@"0§));
                                                §§goto(addr44);
                                             }
                                             addr44:
                                             addr78:
                                          }
                                          return;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(param1.§9!<§ <= 3);
                                          if(_loc3_ || this)
                                          {
                                             continue loop2;
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              this.§;!!§.setText(param1.§9!<§.toString());
                              §§goto(addr78);
                           }
                        }
                        addr100:
                     }
                     §§goto(addr130);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      private function §[!2§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0"$§ = null;
         for each(_loc2_ in [this.§0!U§,this.§-v§,this.§0!U§])
         {
            if(_loc5_ || this)
            {
               this.§>"U§(_loc2_,param1,true);
            }
         }
      }
      
      private function §?7§(param1:§5"2§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = param1.userId;
         if(!_loc4_)
         {
            this.§?J§ = param1;
            while(true)
            {
               this.§+!C§();
               addr73:
               if(_loc3_ || this)
               {
                  this.§46§(param1.userName,this.§#""§,this.§@;§.getItemByName("EnemyNameMask").mClip);
                  addr80:
                  if(!_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           addr66:
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           §§goto(addr73);
                        }
                        addr101:
                        while(true)
                        {
                           this.§%"M§(this.§8!f§,this.§]!B§);
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        this.§]!B§ = new §?@§(_loc2_,50,50,§@4§.NORMAL);
                        §§goto(addr101);
                        §§goto(addr66);
                     }
                     addr105:
                  }
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §46§(param1:String, param2:§6!D§, param3:MovieClip) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
                     if(_loc4_)
                     {
                        param3.visible = false;
                        continue;
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           param2.setText(param1);
                           if(!(_loc5_ && param2))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  param2.mClip.mask = param3;
               }
            }
         }
         §§goto(addr102);
      }
      
      private function §%"M§(param1:§0"$§, param2:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1.mClip.numChildren <= 0)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc3_ || _loc3_)
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
      
      private function §&"#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§@#B§(§4#;§.singleton.dataModel).§9!N§.id);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            this.§&1§();
            while(true)
            {
               this.§3e§ = new §?@§(_loc1_,50,50,§@4§.NORMAL);
               while(!(_loc2_ && _loc3_))
               {
                  this.§%"M§(this.§<!t§,this.§3e§);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §;!k§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&"#§();
         }
      }
      
      private function §+!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]!B§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!B§);
                     addr59:
                     addr41:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§]!B§ = null;
                        }
                        while(!_loc1_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr19);
                  }
               }
               addr19:
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr41);
      }
      
      private function §&1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§3e§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr80:
                     this.§3e§.dispose();
                  }
                  do
                  {
                     this.§3e§ = null;
                  }
                  while(!(_loc2_ || this));
                  
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      public function set §#"a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,-§ = param1;
            do
            {
               §§push(this.§2#>§);
               if(_loc2_)
               {
                  §§push(this.§,-§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              §§pop();
                              addr65:
                              §§push(this.§5!S§);
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr65);
            }
            while(§§pop().setVisibility(§§pop()), !(_loc2_ || param1));
            
         }
      }
      
      private function §[_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§]"n§ = this.§5E§.pop();
         }
         while(true)
         {
            this.§=v§ = §-#C§.§%!E§.§^!H§(this.§="c§.mClip,{"x":this.§4">§ + 15},{"x":this.§4">§},0.5,§-#C§.§ !^§);
            loop1:
            for(; _loc2_ || _loc2_; while(_loc2_ || _loc1_)
            {
               §§goto(addr73);
            })
            {
               §§push(this.§=v§);
               while(true)
               {
                  §§pop().onComplete = this.§ !C§;
                  §§push(this.§=v§);
                  addr73:
                  continue loop1;
                  if(!_loc1_)
                  {
                     §§pop().play();
                     do
                     {
                        §?!r§.§"#_§("next_to_beat");
                     }
                     while(_loc1_);
                     
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function § !C§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§=v§ = null;
         }
         loop0:
         while(true)
         {
            §§push(this.§-v§);
            addr64:
            while(true)
            {
               §§pop().§-"I§("Start");
               continue loop0;
            }
         }
      }
      
      private function §@6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§6#X§ = null;
            loop0:
            while(true)
            {
               this.§]"n§ = null;
               while(this.§5E§.length > 0)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr68:
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         this.§[_§();
         §§goto(addr68);
      }
      
      private function §9"!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§=v§ = null;
            do
            {
               this.§]"n§ = null;
            }
            while(!_loc1_);
            
         }
      }
      
      private function §>"U§(param1:§0"$§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §§push(param1.§<"M§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  if(_loc5_ || this)
                  {
                     while(true)
                     {
                        §§push(param1.§<U§(param2));
                        if(!(_loc6_ && param3))
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              addr85:
                              §§push(_loc4_ = §§pop());
                           }
                           if(§§pop() != "End")
                           {
                              §§goto(addr22);
                           }
                           while(true)
                           {
                              param1.§<"M§ = false;
                              continue loop0;
                           }
                        }
                        §§goto(addr85);
                     }
                     addr62:
                  }
                  §§goto(addr89);
               }
               addr22:
               return;
            }
         }
         §§goto(addr62);
      }
      
      private function §6!u§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§]"V§ = null;
         var _loc2_:§5"$§ = null;
         for each(_loc1_ in this.§-"]§.data)
         {
            if(!_loc6_)
            {
               if(!(_loc1_ is §5"2§))
               {
                  continue;
               }
            }
            _loc2_ = new §5"$§(_loc1_.userId,§@4§.NORMAL);
            if(!_loc6_)
            {
               _loc2_.dispose();
            }
         }
      }
      
      private function §8"N§(param1:int) : String
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
            for(; §§pop().length % 3 > 0; while(true)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(§§pop().slice(_loc2_.length % 3));
               }
               if(_loc7_)
               {
                  break;
               }
               _loc2_ = §§pop();
               if(!_loc8_)
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  §§goto(addr92);
               }
            })
            {
               while(true)
               {
                  _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
                  continue loop0;
               }
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           _loc3_.push(_loc2_.substr(0,3));
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              if(_loc7_)
                              {
                                 continue;
                              }
                              §§push(3);
                              if(!_loc7_)
                              {
                                 §§push(§§pop().substr(§§pop()));
                                 if(_loc8_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr125);
                                 }
                                 break loop4;
                              }
                              §§push(§§pop().substr(§§pop(),_loc2_.length - 1));
                              if(!(_loc7_ && _loc2_))
                              {
                                 _loc2_ = §§pop();
                              }
                              §§goto(addr167);
                           }
                           break;
                        }
                        if(!(_loc7_ && this))
                        {
                           addr125:
                           var _loc5_:int = 0;
                           if(_loc8_)
                           {
                              var _loc6_:* = _loc3_;
                              if(!(_loc7_ && this))
                              {
                                 loop6:
                                 while(§§hasnext(_loc6_,_loc5_))
                                 {
                                    §§push(§§nextvalue(_loc5_,_loc6_));
                                    if(!_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc8_ || _loc3_)
                                          {
                                             §§push(§§pop() + (_loc4_ + ","));
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr167);
                        }
                        addr167:
                        if(_loc8_ || _loc2_)
                        {
                           break;
                        }
                        return _loc2_;
                        §§goto(addr167);
                     }
                     §§push(_loc2_);
                     if(_loc8_ || param1)
                     {
                        break;
                     }
                     §§goto(addr167);
                  }
                  break;
               }
               §§goto(addr184);
            }
            addr51:
         }
         §§goto(addr51);
      }
   }
}
