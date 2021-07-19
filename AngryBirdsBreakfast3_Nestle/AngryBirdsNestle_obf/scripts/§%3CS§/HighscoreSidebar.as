package §<S§
{
   import §'"!§.§+§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §4[§.§2P§;
   import §[!Z§.§>D§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §+i§:String = "StateHighScoresLocal";
      
      public static const §%"0§:String = "StateHighScoresGlobal";
      
      public static const §%F§:String = "StateDisableHighScores";
      
      public static const §'"7§:String = "StateLoadingLevelHighScores";
      
      public static const §7!_§:String = "credits_level";
      
      public static const §#!D§:Array;
      
      public static const §]!p§:Array;
      
      public static const § T§:int = 5;
      
      public static const §2! §:int = 10;
      
      public static const §%A§:int = 10;
      
      public static const § O§:uint = 3394815;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && HighscoreSidebar))
         {
            §+i§ = "StateHighScoresLocal";
            while(true)
            {
               §%"0§ = "StateHighScoresGlobal";
               loop7:
               for(; _loc2_ || _loc2_; if(!(_loc2_ || HighscoreSidebar))
               {
                  continue;
               },§§goto(addr47))
               {
                  §2! § = 10;
                  loop8:
                  while(true)
                  {
                     §%A§ = 10;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue loop8;
                        }
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        while(true)
                        {
                           § T§ = 5;
                           continue loop7;
                        }
                     }
                     addr164:
                     while(true)
                     {
                        §%F§ = "StateDisableHighScores";
                        loop2:
                        while(true)
                        {
                           §'"7§ = "StateLoadingLevelHighScores";
                           addr144:
                           while(true)
                           {
                              §7!_§ = "credits_level";
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      private var §'9§:String = null;
      
      private var §?1§:Array;
      
      private var §'!6§:int = 0;
      
      private var §`!k§:String = null;
      
      private var §%z§:Array;
      
      private var §29§:§,6§;
      
      private var §#S§:MovieClip = null;
      
      private var §7$§:Number = 0;
      
      private var §?"$§:int = 0;
      
      private var §2U§:Boolean = false;
      
      private var §3§:Array;
      
      public var §`!D§:Boolean = false;
      
      private var §'w§:Boolean;
      
      private var §#!b§:Boolean;
      
      private var §#!0§:Boolean;
      
      private var §!"§:Number;
      
      private var §8"!§:Boolean;
      
      public function HighscoreSidebar()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3§ = [];
            while(true)
            {
               super();
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.reset();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §7" §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.§`!D§);
            if(_loc1_)
            {
               §§push(!§§pop());
            }
            §§pop().§`!D§ = §§pop();
         }
      }
      
      public function reset() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:§""8§ = null;
         var _loc3_:§""8§ = null;
         if(_loc7_ || _loc3_)
         {
            this.§?1§ = [];
            if(_loc7_)
            {
               this.§'!6§ = 0;
            }
         }
         for each(_loc1_ in §#!D§)
         {
            _loc2_ = new §""8§(_loc1_,true);
            if(!(_loc6_ && _loc1_))
            {
               this.§?1§.push(_loc2_);
            }
            _loc3_ = new §""8§(_loc1_,false);
            if(_loc7_)
            {
               this.§?1§.push(_loc3_);
            }
         }
         if(_loc7_ || _loc3_)
         {
            this.§`!k§ = §#!D§[0];
            loop1:
            while(true)
            {
               this.§#S§ = null;
               loop2:
               while(true)
               {
                  this.§7$§ = 0;
                  while(_loc7_)
                  {
                     this.§?"$§ = 0;
                     addr128:
                     if(!(_loc7_ || this))
                     {
                        continue;
                     }
                     this.§!"§ = 0;
                     addr135:
                     if(_loc6_)
                     {
                        loop5:
                        while(true)
                        {
                           if(!(_loc7_ || _loc3_))
                           {
                              while(true)
                              {
                                 this.§2U§ = false;
                                 continue loop5;
                              }
                              return;
                              addr116:
                              addr140:
                           }
                           §§goto(addr128);
                        }
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop2;
                     }
                     §§goto(addr116);
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr140);
      }
      
      public function removeEventListeners() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§""8§ = null;
         var _loc3_:* = this.§?1§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.removeEventListener(§>%§.§=L§,this.§2r§);
            }
         }
      }
      
      public function §0!t§(param1:§,6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§29§ = param1;
         }
         while(true)
         {
            this.§3§ = this.§29§.getItemByName("TextField_MyScoreNumber").mClip.filters;
            while(_loc3_)
            {
               this.§@w§(this.§'9§);
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      private function §9+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§29§.getItemByName("Container_Highscores").setVisibility(param1);
         }
      }
      
      public function §;!I§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§29§);
            loop0:
            while(true)
            {
               §§push("Button_Credits");
               loop1:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop(),true);
                        loop4:
                        while(true)
                        {
                           §§push(param1);
                           loop5:
                           while(!§§pop())
                           {
                              §§push(this.§29§);
                              if(!_loc3_)
                              {
                                 §§push("Button_Credits");
                                 if(_loc2_)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             §§push(§§pop().visible);
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      addr67:
                                                      §§push(this.§29§);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            addr92:
                                                            §§push("Button_Credits");
                                                            if(_loc2_)
                                                            {
                                                               addr95:
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               if(_loc3_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§pop().mClip.alpha = 0.6;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     if(!(_loc2_ || param1))
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§'w§ = param1;
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     return;
                                                                     addr23:
                                                                  }
                                                                  addr126:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr23);
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               addr100:
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(!_loc2_)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     §§pop().setVisibility(§§pop());
                                                                     §§goto(addr126);
                                                                  }
                                                                  addr122:
                                                               }
                                                               addr135:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§pop().mClip.alpha = 1;
                                                                     addr141:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§push(this.§29§);
                                                                        continue loop6;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         while(!_loc3_)
                                                         {
                                                            §§goto(addr135);
                                                            §§push("Button_Credits");
                                                         }
                                                         continue loop0;
                                                         addr132:
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr23);
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr67);
                           }
                           while(true)
                           {
                              §§goto(addr132);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      public function §4!4§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§29§);
            while(true)
            {
               §§push("Button_Logout");
               addr141:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr142:
                  while(true)
                  {
                     §§push(param1);
                     addr143:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop(),true);
                     }
                  }
               }
            }
            addr140:
         }
         loop4:
         while(true)
         {
            this.§#!0§ = param1;
            while(true)
            {
               if(!param1)
               {
                  §§push(this.§29§);
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§push("Button_Logout");
                        if(!_loc3_)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(_loc2_ || this)
                           {
                              §§pop().mClip.alpha = 0.6;
                              if(_loc2_ || this)
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       break;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       §§push(this.§29§);
                                       addr106:
                                       while(true)
                                       {
                                          §§push("Button_Logout");
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop().getItemByName(§§pop()));
                                                loop9:
                                                while(!_loc3_)
                                                {
                                                   §§pop().mClip.alpha = 1;
                                                   while(_loc2_)
                                                   {
                                                      §§push(this.§29§);
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push("Button_Logout");
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(true);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                            }
                                                            §§goto(addr141);
                                                            addr75:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr140);
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr62);
               }
               §§goto(addr104);
            }
            return;
         }
      }
      
      public function §-!<§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§29§);
            while(true)
            {
               §§push("Button_Tutorial");
               addr198:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr199:
                  while(true)
                  {
                     §§push(param1);
                     addr200:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop(),true);
                     }
                  }
               }
            }
            addr197:
         }
         loop4:
         while(true)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop())
               {
                  addr177:
                  §§push(this.§29§);
               }
               else
               {
                  §§push(this.§29§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(!(_loc2_ && param1))
                  {
                     §§push("Button_Tutorial");
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              §§push(§§pop().getItemByName(§§pop()));
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       §§pop().mClip.alpha = 1;
                                       addr194:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§29§);
                                             addr153:
                                             loop14:
                                             while(true)
                                             {
                                                §§push("Button_Tutorial");
                                                addr154:
                                                while(true)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop15;
                                                      }
                                                      addr180:
                                                   }
                                                   continue loop14;
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(true);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          loop7:
                                          do
                                          {
                                             addr29:
                                             loop8:
                                             while(true)
                                             {
                                                this.§#!b§ = param1;
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   continue loop7;
                                                }
                                                addr147:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             §§goto(addr194);
                                          }
                                          while(!(_loc3_ || param1));
                                          
                                          if(!(_loc2_ && this))
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr199);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              else
                              {
                                 addr144:
                                 §§pop().mClip.alpha = 0.6;
                              }
                              §§goto(addr147);
                           }
                           else
                           {
                              §§goto(addr198);
                           }
                        }
                        §§goto(addr154);
                     }
                     else
                     {
                        addr143:
                        §§push(§§pop().getItemByName(§§pop()));
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr179:
                     §§push("Button_Tutorial");
                  }
                  §§goto(addr180);
               }
               §§goto(addr179);
            }
            if(_loc3_ || this)
            {
               if(_loc3_)
               {
                  §§goto(addr143);
                  §§push("Button_Tutorial");
               }
               else
               {
                  §§goto(addr197);
               }
               §§goto(addr199);
            }
            §§goto(addr153);
         }
      }
      
      public function §-!$§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§29§);
            loop0:
            while(true)
            {
               §§push("Button_Mute");
               loop1:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop(),true);
                        loop4:
                        while(true)
                        {
                           if(!param1)
                           {
                              §§push(this.§29§);
                              loop5:
                              for(; _loc3_; §§push(this.§29§),if(_loc2_)
                              {
                                 continue;
                              },if(!(_loc2_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push("MovieClip_SoundOff");
                                 if(!_loc2_)
                                 {
                                    §§goto(addr41);
                                 }
                                 §§goto(addr132);
                              },§§goto(addr124))
                              {
                                 §§push("Button_Mute");
                                 if(_loc3_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop().getItemByName(§§pop()));
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§pop().mClip.alpha = 0.6;
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(this.§29§);
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push("MovieClip_SoundOff");
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr134:
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    addr180:
                                                                                    addr178:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§29§);
                                                                                       addr150:
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("Button_Mute");
                                                                                             addr187:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                addr188:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().mClip.alpha = 1;
                                                                                                   addr201:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§29§);
                                                                                                      break loop5;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push("MovieClip_SoundOff");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§pop().setVisibility(§§pop());
                                                                                 break loop7;
                                                                              }
                                                                              continue loop3;
                                                                              addr135:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              addr154:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().mClip.alpha = 1;
                                                                                 continue loop20;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        addr132:
                                                                     }
                                                                     §§goto(addr150);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr184:
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                   }
                                                   break;
                                                   addr53:
                                                   §§pop().mClip.alpha = 0.6;
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§goto(addr20);
                                                   }
                                                }
                                             }
                                             continue loop2;
                                             addr20:
                                             return;
                                          }
                                          §§push(§§pop().getItemByName(§§pop()));
                                          addr41:
                                          break;
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr53);
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr135);
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr178);
                                          }
                                          §§goto(addr188);
                                          addr175:
                                          while(true)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             continue loop11;
                                          }
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr175);
                              }
                              while(true)
                              {
                                 §§goto(addr175);
                              }
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      public function §'%§(param1:Boolean) : void
      {
      }
      
      public function §8""§(param1:String) : §""8§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§""8§ = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§?1§)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr121:
                              while(true)
                              {
                                 addr83:
                                 while(true)
                                 {
                                    §§push(_loc2_.levelId == param1);
                                    addr88:
                                    while(_loc5_)
                                    {
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           loop9:
                           while(_loc5_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 loop10:
                                 for(; _loc5_; if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 },if(_loc5_)
                                 {
                                    loop12:
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             return _loc2_;
                                          }
                                          §§goto(addr103);
                                       }
                                       else if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop12;
                                             }
                                             §§goto(addr83);
                                          }
                                          addr81:
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop0;
                                    addr71:
                                 },§§goto(addr88))
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_.§>E§);
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(this.§8"!§);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          continue loop1;
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr88);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr71);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr81);
         }
         return null;
      }
      
      public function §[l§(param1:String, param2:Boolean) : §""8§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§""8§ = null;
         loop0:
         for each(_loc3_ in this.§?1§)
         {
            if(_loc7_)
            {
               §§push(_loc3_ == null);
               while(true)
               {
                  §§push(!§§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr126:
                              while(true)
                              {
                                 addr93:
                                 while(true)
                                 {
                                    §§push(_loc3_.levelId == param1);
                                    addr98:
                                    while(!_loc6_)
                                    {
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           while(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§pop();
                                    loop11:
                                    while(!_loc6_)
                                    {
                                       §§push(_loc3_.§>E§);
                                       if(!_loc6_)
                                       {
                                          continue loop10;
                                       }
                                       addr76:
                                       if(!_loc6_)
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr89);
                                                }
                                                continue loop11;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr93);
                                          }
                                          continue loop0;
                                          addr78:
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              §§goto(addr78);
                              §§push(param2);
                              if(_loc6_ && _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr76);
                              §§push(§§pop() == §§pop());
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
            }
            addr89:
            return _loc3_;
         }
         return null;
      }
      
      public function §<8§(param1:int, param2:String, param3:§+§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§""8§ = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && param3))
            {
               if("BUTTON_SCORES" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc7_ && this)
                     {
                     }
                  }
                  else
                  {
                     addr400:
                     §§push(2);
                     if(_loc7_ && this)
                     {
                     }
                  }
               }
               else
               {
                  if("BUTTON_OVERALL" === _loc5_)
                  {
                     if(_loc6_)
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                           addr463:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§@w§(§+i§);
                                 this.§4!b§(HighscoreSidebar.§#!D§[this.§'!6§]);
                                 §>D§.§9!q§("Menu_Confirm");
                                 addr201:
                                 break loop0;
                                 addr201:
                                 addr192:
                                 addr207:
                              case 1:
                                 this.§@w§(§%"0§);
                                 this.§4!b§(HighscoreSidebar.§#!D§[this.§'!6§]);
                                 if(!_loc7_)
                                 {
                                    §>D§.§9!q§("Menu_Confirm");
                                    break loop0;
                                    addr169:
                                 }
                                 else
                                 {
                                    addr218:
                                    §§push(this.§8""§(this.§`!k§));
                                    if(!_loc7_)
                                    {
                                       if((_loc4_ = §§pop()) != null)
                                       {
                                          if(!_loc7_)
                                          {
                                             _loc4_.§>!8§();
                                             if(_loc6_ || this)
                                             {
                                                addr250:
                                                this.§6"7§(this.§`!k§,false);
                                                if(!_loc7_)
                                                {
                                                   addr283:
                                                   §>D§.§9!q§("Menu_Confirm");
                                                   if(_loc7_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   addr257:
                                                }
                                                break;
                                             }
                                             break loop0;
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr257);
                                    }
                                    else
                                    {
                                       addr262:
                                       if((_loc4_ = §§pop()) != null)
                                       {
                                          if(_loc6_ || param3)
                                          {
                                             _loc4_.§>!8§();
                                             if(!_loc6_)
                                             {
                                             }
                                             §§goto(addr283);
                                          }
                                          this.§6"7§(this.§`!k§,false);
                                       }
                                    }
                                    §§goto(addr283);
                                 }
                                 break;
                                 addr187:
                              case 2:
                                 addr135:
                                 §§push(this.§'9§);
                                 §§push(§%"0§);
                                 if(_loc6_ || param2)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       this.§4!b§(HighscoreSidebar.§#!D§[this.§7!"§(this.§'!6§)]);
                                       if(!_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr144:
                                             if(!_loc7_)
                                             {
                                                this.§4!b§(HighscoreSidebar.§#!D§[this.§7!"§(this.§'!6§)]);
                                                addr155:
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr108:
                                                      §>D§.§9!q§("Menu_Confirm");
                                                      break loop0;
                                                      addr112:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                }
                                                §§goto(addr192);
                                             }
                                             else
                                             {
                                                §§goto(addr207);
                                             }
                                          }
                                          §§goto(addr108);
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    addr215:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr218);
                                       }
                                       break loop0;
                                    }
                                    §§push(this.§8""§(this.§`!k§));
                                    §§goto(addr262);
                                 }
                              case 3:
                                 §§push(this.§'9§);
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!(_loc7_ && param3))
                                    {
                                       §§push(§%"0§);
                                       if(_loc6_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                this.§4!b§(HighscoreSidebar.§#!D§[this.§1Z§(this.§'!6§)]);
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr20:
                                                      while(true)
                                                      {
                                                         §>D§.§9!q§("Menu_Confirm");
                                                         if(_loc6_ || param3)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr187);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§4!b§(HighscoreSidebar.§#!D§[this.§1Z§(this.§'!6§)]);
                                             if(!(_loc7_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr20);
                                                }
                                                §§goto(addr169);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       else
                                       {
                                          §§goto(addr215);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr135);
                                    }
                                 }
                                 else
                                 {
                                    addr214:
                                    §§push(§%"0§);
                                 }
                                 §§goto(addr215);
                              case 4:
                                 §§push(this.§'9§);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr214);
                                 }
                                 continue;
                              case 5:
                                 if(this.§'9§ == §%"0§)
                                 {
                                    break;
                                 }
                                 addr342:
                                 if(_loc4_ = this.§8""§(this.§`!k§))
                                 {
                                    if(_loc6_)
                                    {
                                       _loc4_.§[@§();
                                       if(_loc7_)
                                       {
                                       }
                                       addr357:
                                       §>D§.§9!q§("Menu_Confirm");
                                       break loop0;
                                    }
                                    this.§6"7§(this.§`!k§,false);
                                 }
                                 §§goto(addr357);
                           }
                           §§push(this.§8""§(this.§`!k§));
                           if(_loc6_)
                           {
                              if(_loc4_ = §§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc4_.§[@§();
                                    if(!(_loc7_ && param3))
                                    {
                                       this.§6"7§(this.§`!k§,false);
                                       if(_loc6_ || this)
                                       {
                                          addr337:
                                          §§goto(addr357);
                                       }
                                    }
                                 }
                                 §§goto(addr357);
                              }
                              §§goto(addr337);
                           }
                           else
                           {
                              §§goto(addr342);
                           }
                        }
                        else
                        {
                           addr458:
                           §§goto(addr463);
                        }
                     }
                  }
                  else if("RIGHT" === _loc5_)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr400);
                     }
                  }
                  else if("LEFT" === _loc5_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§push(3);
                        if(!(_loc6_ || param2))
                        {
                           addr441:
                        }
                     }
                  }
                  else if("UP" === _loc5_)
                  {
                     if(_loc6_ || param2)
                     {
                        §§push(4);
                        if(!_loc7_)
                        {
                           §§goto(addr441);
                        }
                     }
                  }
                  else if("DOWN" !== _loc5_)
                  {
                     §§goto(addr463);
                     §§push(6);
                  }
                  §§goto(addr463);
                  if(_loc6_)
                  {
                     §§goto(addr458);
                  }
               }
               §§goto(addr463);
            }
            §§goto(addr400);
         }
      }
      
      public function §@w§(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§'9§ = param1;
         }
         var _loc3_:* = param1;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§+i§);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(0);
                        if(!(_loc5_ || param2))
                        {
                           addr1682:
                        }
                     }
                     else
                     {
                        addr1679:
                        §§push(2);
                        if(!_loc4_)
                        {
                           §§goto(addr1682);
                        }
                     }
                  }
                  else
                  {
                     §§push(§%"0§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(1);
                                 if(_loc5_ || this)
                                 {
                                 }
                                 §§goto(addr1709);
                              }
                              else
                              {
                                 §§goto(addr1679);
                              }
                           }
                           else
                           {
                              §§push(§%F§);
                              if(_loc5_ || this)
                              {
                                 addr1668:
                                 §§push(_loc3_);
                                 if(!(_loc4_ && param2))
                                 {
                                    addr1676:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr1679);
                                       }
                                    }
                                    else
                                    {
                                       addr1685:
                                       if(§'"7§ !== _loc3_)
                                       {
                                          addr1709:
                                          loop98:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§8"!§ = true;
                                                §§push(this.§29§);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push("MovieClip_LoadingHiScores");
                                                   addr1582:
                                                   while(true)
                                                   {
                                                      addr1584:
                                                      addr1585:
                                                      §§pop().getItemByName(§§pop()).setVisibility(false);
                                                      addr1570:
                                                      §§push(this.§29§);
                                                      §§push("TextField_Level_Num");
                                                      while(true)
                                                      {
                                                         addr1572:
                                                         (§§pop().getItemByName(§§pop()) as §7!&§).§'!"§.text = "";
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(this.§29§);
                                                            addr1559:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§push(this.§29§);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  addr1565:
                                                                  addr1566:
                                                                  §§pop().setObjectToFront(§§pop().getItemByName("Container_SideBar_Tab_Scores"));
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§29§);
                                                                     while(true)
                                                                     {
                                                                        addr1550:
                                                                        §§push(this.§29§);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr1521:
                                                                           break;
                                                                           addr1554:
                                                                           addr1553:
                                                                           addr1542:
                                                                           addr1541:
                                                                           addr1544:
                                                                           addr1543:
                                                                           addr1555:
                                                                           addr1539:
                                                                        }
                                                                        §§pop().setObjectToFront(§§pop().getItemByName("Container_Board_Selection"));
                                                                        this.§29§.setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
                                                                        §§push(this.§29§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr1527:
                                                                           §§pop().setObjectToFront(this.§29§.getItemByName("Container_Sidebar_Buttons"));
                                                                           addr1526:
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                break;
                                                addr1592:
                                                addr1581:
                                             case 1:
                                                this.§8"!§ = false;
                                                addr1397:
                                                §§push(this.§29§);
                                                §§push("MovieClip_LoadingHiScores");
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      loop9:
                                                      while(!_loc4_)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            addr1382:
                                                            §§push(this.§29§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push("TextField_Level_Num");
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  addr1386:
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(!_loc4_)
                                                                  {
                                                                     (§§pop() as §7!&§).§'!"§.text = "";
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        addr1357:
                                                                        §§push(this.§29§);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(this.§29§);
                                                                              loop12:
                                                                              for(; _loc5_ || param2; while(true)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§push("Container_Highscores");
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr1297:
                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr1299);
                                                                                          }
                                                                                          §§goto(addr1336);
                                                                                       }
                                                                                       §§goto(addr1542);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop12;
                                                                              },§§goto(addr1541))
                                                                              {
                                                                                 §§push(§§pop().getItemByName("Container_Sidebar_Tab_Overall"));
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setObjectToFront(§§pop());
                                                                                    addr1325:
                                                                                    §§push(this.§29§);
                                                                                    §§push(this.§29§);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("Container_Board_Selection");
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                          while(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§pop().setObjectToFront(§§pop());
                                                                                             loop16:
                                                                                             for(; !(_loc4_ && param1); while(true)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      addr1243:
                                                                                                      §§push(this.§29§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr1247:
                                                                                                         §§push(this.§29§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§goto(addr1464);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop16;
                                                                                             },§§goto(addr1436))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(this.§29§);
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§29§);
                                                                                                      continue loop12;
                                                                                                      addr1216:
                                                                                                      if(!(_loc5_ || param2))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push("Button_ArrowRight");
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().getItemByName(§§pop()));
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1226:
                                                                                                            §§push(true);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§pop().setEnabled(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§29§);
                                                                                                                  addr1188:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr1198:
                                                                                                                           §§push("Button_ArrowLeft");
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                              loop23:
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§29§);
                                                                                                                                          addr1160:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1161:
                                                                                                                                             §§push("Button_ArrowRight");
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                while(!(_loc4_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr1176:
                                                                                                                                                         §§push(true);
                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         §§pop().setVisibility(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr1145:
                                                                                                                                                            §§push(this.§29§);
                                                                                                                                                            §§push("Highscore_Holder");
                                                                                                                                                            addr1146:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr1147:
                                                                                                                                                               §§pop().getItemByName(§§pop()).setVisibility(true);
                                                                                                                                                               addr1149:
                                                                                                                                                               if(!(_loc5_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               addr1107:
                                                                                                                                                               §§push(this.§29§);
                                                                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr1236:
                                                                                                                                                                     addr1237:
                                                                                                                                                                     §§pop().getItemByName("Button_ArrowLeft").setEnabled(true);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1216);
                                                                                                                                                                     §§push(this.§29§);
                                                                                                                                                                     §§goto(addr1107);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                                  addr1233:
                                                                                                                                                               }
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push("TextField_Level_Num");
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop24;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1132:
                                                                                                                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                     if(_loc5_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(true);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().setVisibility(§§pop());
                                                                                                                                                                           addr1141:
                                                                                                                                                                           §§push(this.§29§);
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1075:
                                                                                                                                                                              §§push("Button_ArrowUp");
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1083:
                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop23;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1457);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1570);
                                                                                                                                                                        addr1140:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1468);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1465);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1559);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1507);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1491);
                                                                                                                                                }
                                                                                                                                                break loop25;
                                                                                                                                                addr1164:
                                                                                                                                             }
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1446);
                                                                                                                                       addr1095:
                                                                                                                                       if(!(_loc5_ || param2))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                       §§push(this.§29§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr1059:
                                                                                                                                          §§push("Button_ArrowDown");
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr1062:
                                                                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr1067:
                                                                                                                                                §§pop().setVisibility(true);
                                                                                                                                                this.§%!4§();
                                                                                                                                                this.§'%§(true);
                                                                                                                                                continue loop11;
                                                                                                                                                addr1052:
                                                                                                                                                addr1068:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1457);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1445);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1521);
                                                                                                                                    }
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1572);
                                                                                                                              }
                                                                                                                              §§goto(addr1515);
                                                                                                                           }
                                                                                                                           §§goto(addr1498);
                                                                                                                        }
                                                                                                                        §§goto(addr1505);
                                                                                                                     }
                                                                                                                     §§goto(addr1497);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1229:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr1584);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1501);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1477);
                                                                                          }
                                                                                          §§goto(addr1554);
                                                                                          addr1336:
                                                                                       }
                                                                                       break;
                                                                                       if(!(_loc5_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push("Container_Sidebar_Buttons");
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          addr1265:
                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             §§pop().setObjectToFront(§§pop());
                                                                                             §§goto(addr1233);
                                                                                             §§push(this.§29§);
                                                                                             addr1273:
                                                                                          }
                                                                                          §§goto(addr1565);
                                                                                       }
                                                                                       §§goto(addr1526);
                                                                                    }
                                                                                    §§goto(addr1553);
                                                                                    addr1299:
                                                                                    if(!(_loc5_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§pop().setObjectToFront(§§pop());
                                                                                    §§goto(addr1307);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1550);
                                                                           }
                                                                           §§goto(addr1513);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr1481);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1584);
                                                            }
                                                            §§goto(addr1454);
                                                         }
                                                         §§goto(addr1544);
                                                      }
                                                      §§goto(addr1508);
                                                   }
                                                }
                                                §§goto(addr1582);
                                                addr1424:
                                             case 2:
                                                §§push(this.§29§);
                                                loop28:
                                                for(; _loc5_ || param1; if(!(_loc5_ || _loc3_))
                                                {
                                                   continue;
                                                },if(!(_loc4_ && param2))
                                                {
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr927:
                                                         §§push(§§pop().getItemByName("Button_ArrowLeft"));
                                                         if(_loc5_ || this)
                                                         {
                                                            §§goto(addr936);
                                                            §§push(false);
                                                         }
                                                         §§goto(addr1483);
                                                      }
                                                      §§goto(addr1445);
                                                   }
                                                   §§goto(addr1325);
                                                },§§goto(addr1145))
                                                {
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr1019:
                                                         §§push("MovieClip_LoadingHiScores");
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr1027:
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            §§push(false);
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  §§push(this.§29§);
                                                                  loop31:
                                                                  for(; _loc5_; while(true)
                                                                  {
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue loop31;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr784:
                                                                        §§push(§§pop().getItemByName("Button_ArrowUp"));
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr793:
                                                                           §§push(false);
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop().setVisibility(§§pop());
                                                                                 addr798:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr750);
                                                                                    §§push(this.§29§);
                                                                                 }
                                                                                 §§goto(addr937);
                                                                              }
                                                                              §§goto(addr1469);
                                                                           }
                                                                           §§goto(addr1459);
                                                                        }
                                                                        §§goto(addr1164);
                                                                     }
                                                                     §§goto(addr1160);
                                                                  })
                                                                  {
                                                                     §§push(§§pop().getItemByName("Button_ArrowLeft"));
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        addr981:
                                                                        §§push(false);
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop29;
                                                                        }
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§pop().setEnabled(§§pop());
                                                                           addr945:
                                                                           §§push(this.§29§);
                                                                           §§push("Button_ArrowRight");
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr954:
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 §§push(false);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().setEnabled(§§pop());
                                                                                    while(!(_loc4_ && this))
                                                                                    {
                                                                                       §§push(this.§29§);
                                                                                       continue loop28;
                                                                                       if(!(_loc5_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.§29§);
                                                                                             continue loop31;
                                                                                          }
                                                                                          §§goto(addr1448);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1036);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1410);
                                                                                 }
                                                                                 §§goto(addr1492);
                                                                              }
                                                                              break;
                                                                              addr882:
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr893:
                                                                                 §§pop().setVisibility(false);
                                                                                 loop36:
                                                                                 while(true)
                                                                                 {
                                                                                    addr850:
                                                                                    §§push(this.§29§);
                                                                                    §§push("Highscore_Holder");
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr853:
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr856:
                                                                                          §§push(false);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                   if(!(_loc4_ && param2))
                                                                                                   {
                                                                                                      §§push(this.§29§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr807:
                                                                                                         §§push(§§pop().getItemByName("TextField_PracticeText"));
                                                                                                         §§push(true);
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               §§goto(addr822);
                                                                                                            }
                                                                                                            break loop98;
                                                                                                         }
                                                                                                         addr750:
                                                                                                         break;
                                                                                                         addr750:
                                                                                                         if(_loc4_ && _loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            addr767:
                                                                                                            §§pop().getItemByName("Button_ArrowDown").setVisibility(false);
                                                                                                            addr768:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§0!M§();
                                                                                                               addr744:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  this.§!!k§(false);
                                                                                                                  addr736:
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop36;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     break loop98;
                                                                                                                  }
                                                                                                                  §§goto(addr1229);
                                                                                                               }
                                                                                                               §§goto(addr1566);
                                                                                                            }
                                                                                                            §§goto(addr1184);
                                                                                                            addr765:
                                                                                                            addr766:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1397);
                                                                                                         }
                                                                                                         §§goto(addr1582);
                                                                                                      }
                                                                                                      §§goto(addr1176);
                                                                                                   }
                                                                                                   break loop98;
                                                                                                }
                                                                                                §§goto(addr1236);
                                                                                             }
                                                                                             §§goto(addr1067);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().setVisibility(§§pop());
                                                                                                addr937:
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr879:
                                                                                                      §§push(this.§29§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr882);
                                                                                                         §§push("Button_ArrowRight");
                                                                                                      }
                                                                                                      §§goto(addr1382);
                                                                                                   }
                                                                                                   §§goto(addr1445);
                                                                                                }
                                                                                                §§goto(addr1103);
                                                                                                §§goto(addr856);
                                                                                             }
                                                                                             addr936:
                                                                                          }
                                                                                          §§goto(addr1445);
                                                                                       }
                                                                                       §§goto(addr1083);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1146);
                                                                              }
                                                                              §§goto(addr1386);
                                                                           }
                                                                           §§goto(addr1161);
                                                                           addr991:
                                                                        }
                                                                        §§goto(addr1447);
                                                                     }
                                                                     §§goto(addr1132);
                                                                  }
                                                                  §§goto(addr1056);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1397);
                                                         }
                                                         §§goto(addr1582);
                                                      }
                                                      §§goto(addr1243);
                                                   }
                                                   §§goto(addr1216);
                                                }
                                                §§goto(addr1188);
                                             case 3:
                                                §§push(this.§29§);
                                                loop42:
                                                for(; !(_loc4_ && param1); while(_loc5_ || param1)
                                                {
                                                   §§goto(addr564);
                                                   §§push("Button_ArrowLeft");
                                                   §§goto(addr505);
                                                })
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push("MovieClip_LoadingHiScores");
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               loop43:
                                                               for(; _loc5_; if(_loc4_ && param1)
                                                               {
                                                                  continue;
                                                               },if(_loc5_)
                                                               {
                                                                  §§goto(addr405);
                                                                  §§push(false);
                                                               },§§goto(addr890))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(true);
                                                                     loop44:
                                                                     for(; _loc5_ || _loc3_; while(true)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§pop().setEnabled(§§pop());
                                                                              §§goto(addr611);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop44;
                                                                     },§§goto(addr767))
                                                                     {
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(this.§29§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§29§);
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().getItemByName("MovieClip_LoadingHiScores"));
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      §§pop().setObjectToFront(§§pop());
                                                                                                      while(_loc5_ || param2)
                                                                                                      {
                                                                                                         §§push(this.§29§);
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                      §§goto(addr1325);
                                                                                                      addr654:
                                                                                                   }
                                                                                                   §§goto(addr1543);
                                                                                                }
                                                                                                §§goto(addr1527);
                                                                                             }
                                                                                             §§goto(addr1297);
                                                                                          }
                                                                                          §§goto(addr1265);
                                                                                       }
                                                                                       §§goto(addr1527);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1247);
                                                                                 addr617:
                                                                              }
                                                                              break;
                                                                              loop65:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             §§push(this.§29§);
                                                                                             loop66:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push("Highscore_Holder");
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop().getItemByName(§§pop()));
                                                                                                            loop67:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(false);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().setVisibility(§§pop());
                                                                                                                     addr370:
                                                                                                                     while(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§29§);
                                                                                                                              continue loop66;
                                                                                                                           }
                                                                                                                           §§goto(addr1555);
                                                                                                                        }
                                                                                                                        §§goto(addr1509);
                                                                                                                     }
                                                                                                                     §§goto(addr1149);
                                                                                                                  }
                                                                                                                  addr369:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop63:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                     loop59:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(false);
                                                                                                                                    loop60:
                                                                                                                                    while(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                       loop61:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§29§);
                                                                                                                                          addr385:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push("Button_ArrowRight");
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                   continue loop63;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1506);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                loop54:
                                                                                                                                                while(!(_loc4_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                   while(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         loop56:
                                                                                                                                                         for(; _loc5_; if(!(_loc5_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                                                                            §§goto(addr321);
                                                                                                                                                         },§§goto(addr807))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().setEnabled(§§pop());
                                                                                                                                                               loop57:
                                                                                                                                                               for(; !(_loc4_ && param1); while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr211);
                                                                                                                                                                        §§push(this.§29§);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop57;
                                                                                                                                                                  §§goto(addr90);
                                                                                                                                                               },§§goto(addr736))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§29§);
                                                                                                                                                                  loop58:
                                                                                                                                                                  for(; !_loc4_; if(!(_loc5_ || param2))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("Button_ArrowDown");
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr150);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr236);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1059);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr765);
                                                                                                                                                                  },§§goto(addr879))
                                                                                                                                                                  {
                                                                                                                                                                     addr456:
                                                                                                                                                                     §§push("Button_ArrowLeft");
                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                              continue loop59;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1198);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr972);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc5_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1147);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr292:
                                                                                                                                                                                    while(!(_loc4_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr302:
                                                                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop56;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop60;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr405:
                                                                                                                                                                                             while(!(_loc4_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().setVisibility(§§pop());
                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1226);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1093);
                                                                                                                                                                                                §§goto(addr302);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr856);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr369);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr807);
                                                                                                                                                                                       if(_loc4_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(false);
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().setVisibility(§§pop());
                                                                                                                                                                                                   continue loop61;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr981);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr300);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             loop76:
                                                                                                                                                                                             while(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().setVisibility(§§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr258:
                                                                                                                                                                                                         §§push(this.§29§);
                                                                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr211:
                                                                                                                                                                                                         addr211:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr218:
                                                                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push("Button_ArrowUp");
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                           continue loop76;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop67;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr954);
                                                                                                                                                                                                                     addr236:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1075);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr505:
                                                                                                                                                                                                            addr505:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc4_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("Button_ArrowRight");
                                                                                                                                                                                                                  continue loop54;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1107);
                                                                                                                                                                                                               §§goto(addr218);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr750);
                                                                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                                                                            §§goto(addr258);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr784);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop65;
                                                                                                                                                                                                   addr78:
                                                                                                                                                                                                   if(_loc4_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop81:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§!!k§(false);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§-!$§(false);
                                                                                                                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop98;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop81;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1052);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop98;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr370);
                                                                                                                                                                                                            §§goto(addr1509);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop61;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§-!<§(false);
                                                                                                                                                                                                                  while(!(_loc4_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§4!4§(false);
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop98;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr78);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                                  addr90:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1237);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr744);
                                                                                                                                                                                                            addr101:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1566);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1273);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1141);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr954);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1141);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr853);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1062);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1514);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1236);
                                                                                                                                                                           §§goto(addr456);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr927);
                                                                                                                                                                        addr564:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1483);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1141);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr505);
                                                                                                                                                                     §§push(this.§29§);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr545);
                                                                                                                                                               }
                                                                                                                                                               addr545:
                                                                                                                                                               §§goto(addr1485);
                                                                                                                                                               addr611:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1147);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr893);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1236);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr784);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1490);
                                                                                                                                          }
                                                                                                                                          §§goto(addr882);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr793);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1499);
                                                                                                                              }
                                                                                                                              §§goto(addr1027);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr535);
                                                                                                                     }
                                                                                                                     §§goto(addr972);
                                                                                                                  }
                                                                                                                  §§goto(addr890);
                                                                                                               }
                                                                                                               §§goto(addr1236);
                                                                                                            }
                                                                                                            §§goto(addr807);
                                                                                                         }
                                                                                                         §§goto(addr1483);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr617);
                                                                                                   §§goto(addr1247);
                                                                                                }
                                                                                                §§goto(addr385);
                                                                                             }
                                                                                             §§goto(addr850);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1592);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1068);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop45;
                                                                              }
                                                                              §§goto(addr768);
                                                                           }
                                                                           §§goto(addr1440);
                                                                        }
                                                                        §§goto(addr1516);
                                                                     }
                                                                     §§goto(addr1483);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr927);
                                                                  }
                                                               }
                                                               §§goto(addr766);
                                                            }
                                                            §§goto(addr1019);
                                                         }
                                                         §§goto(addr1539);
                                                      }
                                                      §§goto(addr1357);
                                                   }
                                                   §§goto(addr850);
                                                }
                                                §§goto(addr774);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr1709);
                                    §§goto(addr1709);
                                 }
                              }
                              §§goto(addr1685);
                           }
                           §§goto(addr1709);
                        }
                        §§goto(addr1676);
                     }
                     §§goto(addr1668);
                  }
                  §§goto(addr1709);
               }
               §§goto(addr1685);
            }
            §§goto(addr1668);
         }
         §§goto(addr1679);
      }
      
      public function §!!k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               §§push(this.§29§);
               if(_loc2_ || param1)
               {
                  §§push("Container_Board_Selection");
                  if(_loc2_)
                  {
                     §§push(§§pop().getItemByName(§§pop()));
                     if(!_loc3_)
                     {
                        §§pop().mClip.alpha = 0.4;
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc3_ && this)
                           {
                              addr90:
                              this.§29§.getItemByName("Container_Board_Selection").mClip.alpha = 1;
                              addr93:
                              addr89:
                              addr88:
                              addr86:
                           }
                           else
                           {
                              addr73:
                           }
                           return;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr89);
               }
               §§goto(addr88);
            }
            §§goto(addr86);
         }
         §§goto(addr73);
      }
      
      private function §7!"§(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1++;
            loop0:
            while(true)
            {
               §§push(param1);
               do
               {
                  if(§§pop() > HighscoreSidebar.§#!D§.length - 1)
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        continue loop0;
                     }
                     §§push(0);
                  }
                  else
                  {
                     addr19:
                     do
                     {
                        §§push(param1);
                     }
                     while(!(_loc2_ || _loc3_));
                     
                     continue;
                     addr19:
                  }
                  addr63:
                  while(true)
                  {
                     param1 = §§pop();
                     continue loop0;
                     §§goto(addr19);
                  }
               }
               while(_loc3_ && this);
               
               return §§pop();
            }
         }
         while(true)
         {
            §§goto(addr19);
         }
      }
      
      private function §1Z§(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            do
            {
               §§push(§§pop() - 1);
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ && param1)
                     {
                        break;
                     }
                     if(§§pop() < 0)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              §§push(int(HighscoreSidebar.§#!D§.length - 1));
                              break;
                           }
                           continue;
                        }
                        while(true)
                        {
                        }
                        addr77:
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           break;
                        }
                        break loop2;
                     }
                     if(_loc3_ || param1)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     param1 = §§pop();
                  }
               }
            }
            while(_loc2_);
            
            return §§pop();
         }
         §§goto(addr77);
      }
      
      public function §8"-§(param1:§""8§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Object = null;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         if(!(_loc10_ && param1))
         {
            §§push(Boolean(param1));
            if(_loc11_ || this)
            {
               if(§§pop())
               {
                  if(_loc11_ || this)
                  {
                     addr58:
                     §§pop();
                     addr70:
                     if(!(_loc10_ && param1))
                     {
                        §§push(Boolean(§2P§.§[!$§));
                     }
                     _loc4_ = param1.§7P§;
                     loop0:
                     while(true)
                     {
                        _loc3_++;
                        loop1:
                        while(true)
                        {
                           param1.§[@§();
                           if(_loc11_ || param1)
                           {
                              §§push(param1.§!!T§);
                              if(!_loc10_)
                              {
                                 §§push(int(§§pop()));
                              }
                              loop2:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 loop3:
                                 while(_loc11_ || _loc3_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop5:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          loop6:
                                          while(!_loc10_)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                while(true)
                                                {
                                                   §§push(§2! §);
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc11_ || param1))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(_loc5_);
                                                         if(!(_loc11_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() - 1);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() * §2! §);
                                                         }
                                                         §§push(int(§§pop() + §§pop()));
                                                         if(!(_loc11_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            break loop7;
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop4;
                                                            }
                                                            try
                                                            {
                                                               _loc8_ = _loc4_[_loc7_];
                                                               if(!_loc10_)
                                                               {
                                                                  addr189:
                                                                  §§push(Boolean(_loc8_));
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(Boolean(§2P§.§[!$§));
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr299:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc8_.isPlayer));
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(!(_loc11_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc3_ <= §%A§)
                                                                                                            {
                                                                                                               _loc6_++;
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        addr219:
                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                        {
                                                                                                                           while(false)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.§>!8§();
                                                                                                                                 addr231:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       addr314:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                    addr276:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       addr277:
                                                                                                                                       addr316:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                       }
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr317);
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr314);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr219);
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                           addr226:
                                                                                                                        }
                                                                                                                        addr240:
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       addr253:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr228);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr252:
                                                                                                                                 }
                                                                                                                                 §§goto(addr277);
                                                                                                                              }
                                                                                                                              break loop16;
                                                                                                                           }
                                                                                                                           addr247:
                                                                                                                        }
                                                                                                                        §§goto(addr314);
                                                                                                                     }
                                                                                                                     §§goto(addr253);
                                                                                                                  }
                                                                                                                  §§goto(addr231);
                                                                                                               }
                                                                                                               §§goto(addr317);
                                                                                                            }
                                                                                                            §§goto(addr240);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr277);
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       addr298:
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 addr290:
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               §§goto(addr189);
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr314);
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  §§goto(addr70);
               }
               addr317:
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §6"7§(param1:String, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:* = §#!D§;
         loop0:
         while(§§hasnext(_loc7_,_loc6_))
         {
            §§push(§§nextvalue(_loc6_,_loc7_));
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(§§pop() == param1);
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop0;
                              }
                              loop6:
                              while(true)
                              {
                                 this.§`!k§ = param1;
                                 loop7:
                                 while(_loc9_ || param1)
                                 {
                                    this.§ 5§(param1);
                                    loop8:
                                    while(_loc9_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          this.§!"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5K§(param1);
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc8_ && param2)
                                                {
                                                   break;
                                                }
                                                this.§]!4§();
                                                if(_loc9_)
                                                {
                                                   continue loop9;
                                                }
                                                continue;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 addr113:
                                 while(true)
                                 {
                                    §§push(§2P§.§@!i§(param1));
                                    if(!_loc9_)
                                    {
                                       continue loop12;
                                    }
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr91:
                     }
                     while(true)
                     {
                        §§pop();
                        §§goto(addr113);
                     }
                  }
               }
            }
         }
         if(_loc9_ || _loc3_)
         {
            if(this.§'9§ == §%"0§)
            {
               if(!(_loc8_ && param1))
               {
                  this.§,G§();
                  if(!_loc8_)
                  {
                     addr149:
                     §§push(this.§29§);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           addr156:
                           _loc5_ = this.§29§.getItemByName("Highscore_Holder").mClip;
                           if(_loc9_ || param1)
                           {
                           }
                           while(_loc5_.numChildren > 0)
                           {
                              _loc5_.removeChildAt(0);
                              if(!_loc9_)
                              {
                                 break;
                              }
                           }
                        }
                        var _loc4_:§""8§;
                        if((_loc4_ = this.§8""§(param1)) == null)
                        {
                           if(_loc9_ || _loc3_)
                           {
                              return;
                           }
                           loop22:
                           while(true)
                           {
                              this.§8"-§(_loc4_);
                              loop23:
                              while(true)
                              {
                                 loop24:
                                 while(true)
                                 {
                                    this.§6c§(_loc4_.§7P§,_loc4_.§!!T§);
                                    loop16:
                                    while(true)
                                    {
                                       if(!(_loc9_ || param1))
                                       {
                                          continue loop23;
                                       }
                                       if(_loc9_)
                                       {
                                          this.§,G§();
                                          while(true)
                                          {
                                             this.§9+§(true);
                                             loop18:
                                             for(; !(_loc8_ && this); while(true)
                                             {
                                                if(_loc8_ && this)
                                                {
                                                   continue loop18;
                                                }
                                                §§goto(addr282);
                                             },§§goto(addr246))
                                             {
                                                if(!(_loc9_ || param2))
                                                {
                                                   continue loop22;
                                                }
                                                §§push(this.§29§);
                                                while(true)
                                                {
                                                   §§pop().getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
                                                   §§push(this.§29§);
                                                   addr282:
                                                   continue loop18;
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      addr246:
                                                      §§pop().setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop18;
                                                         }
                                                         if(!(_loc9_ || _loc3_))
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc9_ || this)
                                                         {
                                                            this.§+p§(param1);
                                                            addr235:
                                                            break;
                                                         }
                                                         addr338:
                                                         while(true)
                                                         {
                                                            if(!_loc4_.§7P§)
                                                            {
                                                               break loop14;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               addr342:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  continue loop24;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      addr208:
                                                      return;
                                                      addr251:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr341);
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc4_.ready);
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr338);
                              }
                              else
                              {
                                 _loc4_.addEventListener(§>%§.§=L§,this.§2r§);
                                 if(_loc9_ || this)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§goto(addr251);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr235);
                           }
                        }
                        §§goto(addr342);
                     }
                  }
                  §§goto(addr156);
               }
            }
         }
         §§goto(addr149);
      }
      
      private function §+p§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     loop4:
                     while(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(!_loc4_)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§pop().§§slot[4] = §§pop();
                              loop7:
                              while(true)
                              {
                                 addr48:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop6;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue loop7;
                                    }
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       §§pop().§§slot[1] = §§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(!(_loc5_ || this))
                                          {
                                             continue loop5;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr48);
                                          }
                                          try
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc4_)
                                             {
                                                §§push(int(levelName.charAt(0)) - 1);
                                                if(!_loc4_)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      §§pop().§§slot[2] = §§pop();
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr210:
                                                         var levelNumInEpisode:int = int(levelName.substring(2));
                                                         addr169:
                                                         addr211:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(levelNumInEpisode);
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr193:
                                                                  §§pop().§§slot[4] = int(§§pop() + § T§ * episodeNum);
                                                                  addr194:
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr144:
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        addr153:
                                                                        §§pop().§§slot[5] = HighscoreSidebar.§]!p§[int(levelNum) - 1];
                                                                        addr164:
                                                                        if(!_loc4_)
                                                                        {
                                                                           (this.§29§.getItemByName("TextField_Level_Num") as §7!&§).§'!"§.text = levelNameString;
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr144);
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           §§goto(addr164);
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr169);
                                                                     addr201:
                                                                  }
                                                                  §§goto(addr211);
                                                                  addr192:
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         addr203:
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr153);
                                          }
                                          catch(e:Error)
                                          {
                                          }
                                          addr236:
                                          return;
                                          continue loop5;
                                       }
                                       continue;
                                    }
                                    addr61:
                                    while(true)
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       continue loop11;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop4;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §2r§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§""8§ = param1.currentTarget as §""8§;
         if(_loc4_ || this)
         {
            _loc2_.removeEventListener(§>%§.§=L§,this.§2r§);
            if(!_loc5_)
            {
               addr37:
               this.§`!k§ = _loc2_.levelId;
            }
            §§push(this.§`!k§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               this.§+p§(_loc3_);
               loop0:
               while(true)
               {
                  this.§8"-§(_loc2_);
                  loop1:
                  while(true)
                  {
                     this.§6c§(_loc2_.§7P§,_loc2_.§!!T§);
                     loop2:
                     while(true)
                     {
                        this.§,G§();
                        while(true)
                        {
                           this.§+@§();
                           while(!(_loc5_ && _loc3_))
                           {
                              if(!_loc5_)
                              {
                                 this.§9+§(true);
                                 continue loop1;
                              }
                              continue loop0;
                              loop7:
                              while(!(_loc5_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(this.§29§);
                                    if(_loc4_)
                                    {
                                       §§pop().setObjectToFront(this.§29§.getItemByName("Container_Highscores"));
                                       continue loop2;
                                    }
                                    addr107:
                                    while(true)
                                    {
                                       §§pop().getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
                                       continue loop7;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr37);
      }
      
      private function §,G§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Object = §2P§.§[!$§;
         if(!(_loc6_ && _loc2_))
         {
            if(_loc1_.name)
            {
               if(!_loc6_)
               {
                  (this.§29§.getItemByName("TextField_MyScoreName") as §7!&§).§'!"§.text = _loc1_.name + ":  " + this.§!"§;
                  if(_loc5_ || _loc1_)
                  {
                  }
               }
               §§goto(addr61);
            }
            if(this.§'9§ == §+i§)
            {
               §§goto(addr61);
            }
            else if(this.§'9§ == §%"0§)
            {
            }
            §§goto(addr61);
         }
         addr61:
         var _loc3_:int = 0;
         var _loc4_:* = §#!D§;
         loop0:
         while(§§hasnext(_loc4_,_loc3_))
         {
            §§push(§§nextvalue(_loc3_,_loc4_));
            while(true)
            {
               _loc2_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§push(§§pop() == this.§`!k§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr145:
                           while(!_loc6_)
                           {
                              continue loop8;
                           }
                           continue loop2;
                        }
                        addr144:
                     }
                     while(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           this.§ 5§(this.§`!k§);
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§!"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5K§(this.§`!k§);
                                 while(!(_loc6_ && _loc3_))
                                 {
                                    this.§]!4§();
                                    if(!_loc6_)
                                    {
                                       if(!(_loc5_ || this))
                                       {
                                          break loop6;
                                       }
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          continue loop6;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr145);
                              }
                           }
                        }
                        §§goto(addr147);
                     }
                     continue loop0;
                  }
                  §§goto(addr144);
               }
            }
         }
         if(!_loc5_)
         {
         }
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§1!0§(param1);
         }
      }
      
      private function §+@§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§?"$§ = 0;
            while(true)
            {
               this.§2U§ = param1;
               while(_loc3_ || _loc3_)
               {
                  this.§7$§ = 0;
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §1!0§(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§29§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§29§.getItemByName("TextField_MyScoreName").mClip;
         if(_loc7_ || _loc3_)
         {
            if(this.§2U§)
            {
               if(_loc7_ || _loc3_)
               {
                  if(this.§#S§)
                  {
                     if(!_loc8_)
                     {
                        addr55:
                        this.§#S§.filters = [new GlowFilter(16777215,1,32,8,this.§7$§,5,false,false)];
                        addr70:
                        var _loc5_:* = 0;
                        var _loc6_:* = this.§3§;
                        loop11:
                        while(true)
                        {
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(!(_loc8_ && param1))
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    this.§#S§.filters.push(_loc4_);
                                 }
                                 continue;
                              }
                              if(_loc7_ || _loc3_)
                              {
                                 if(_loc7_)
                                 {
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       addr122:
                                       if(int((this.§29§.getItemByName("TextField_MyScoreNumber") as §7!&§).§'!"§.text) > 0)
                                       {
                                          if(!_loc8_)
                                          {
                                             _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§7$§,3,false,false)];
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§7$§,3,false,false)];
                                                if(!_loc8_)
                                                {
                                                   addr174:
                                                   §§push(0);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         _loc6_ = this.§3§;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                            break loop11;
                                                         }
                                                         addr216:
                                                         if(!_loc8_)
                                                         {
                                                            addr336:
                                                            §§push(this.§?"$§);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(3);
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     addr340:
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        this.§7$§ = 0;
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           this.§?"$§ = 0;
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 this.§#S§ = null;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    this.§2U§ = false;
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       addr269:
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?"$§);
                                                                                          if(_loc8_ && param1)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(2);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§push(§§pop() % §§pop());
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§7$§);
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() / 200);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§7$§ = §§pop();
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(this.§7$§);
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr405:
                                                                                                         }
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(§§pop() > 5.5)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               addr459:
                                                                                                               addr459:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr373:
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      break;
                                                                                                      addr258:
                                                                                                      if(!(_loc7_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push((_loc5_ = this).§?"$§);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         _loc5_.§?"$§ = _loc6_;
                                                                                                      }
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr373);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr477:
                                                                                                         while(this.§#S§)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  loop6:
                                                                                                                  while(!_loc7_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_.filters = this.§3§;
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               this.§#S§.filters = this.§3§;
                                                                                                            }
                                                                                                            §§goto(addr459);
                                                                                                         }
                                                                                                         addr477:
                                                                                                      }
                                                                                                      §§goto(addr442);
                                                                                                   }
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§7$§);
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() / 200);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                   }
                                                                                                   §§pop().§7$§ = §§pop();
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr454);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                this.§7$§ = 0;
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   addr419:
                                                                                                   §§push((_loc5_ = this).§?"$§);
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      _loc5_.§?"$§ = _loc6_;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr483);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             §§goto(addr477);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr373);
                                                                                 continue loop10;
                                                                              }
                                                                              addr403:
                                                                              §§goto(addr405);
                                                                              §§push(this.§7$§);
                                                                              addr335:
                                                                           }
                                                                           §§goto(addr441);
                                                                        }
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                            }
                                                            addr338:
                                                            addr219:
                                                         }
                                                         §§goto(addr477);
                                                         addr215:
                                                         addr213:
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                §§goto(addr483);
                                             }
                                             §§goto(addr335);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr336);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr215);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              if(_loc7_)
                              {
                                 _loc2_.filters.push(_loc4_);
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc3_.filters.push(_loc4_);
                              continue;
                           }
                           §§goto(addr216);
                        }
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr122);
               }
               §§goto(addr70);
            }
            else
            {
               _loc2_.filters = this.§3§;
            }
            §§goto(addr483);
         }
         §§goto(addr55);
      }
      
      private function §6c§(param1:Array, param2:int) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:* = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc11_:* = null;
         var _loc12_:String = null;
         var _loc3_:* = false;
         if(!(_loc14_ && _loc3_))
         {
            this.§%z§ = param1;
            if(!_loc14_)
            {
               if(!this.§29§)
               {
                  if(!(_loc15_ || _loc3_))
                  {
                     addr56:
                     var _loc4_:Class = §=!V§.§?!O§("Component_HighscoreEntry");
                     var _loc5_:MovieClip = this.§29§.getItemByName("Highscore_Holder").mClip;
                     do
                     {
                        if(_loc5_.numChildren > 0)
                        {
                           continue;
                        }
                        if(!_loc14_)
                        {
                           break;
                        }
                        var _loc6_:* = 0;
                        var _loc7_:int = 0;
                        if(_loc15_ || param1)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc7_);
                              loop2:
                              while(true)
                              {
                                 §§push(§2! §);
                                 while(§§pop() < §§pop())
                                 {
                                    §§push(_loc7_);
                                    if(_loc15_ || param1)
                                    {
                                       §§push(param2);
                                       if(!_loc15_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() - 1);
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§push(§§pop() * §2! §);
                                       }
                                       §§push(int(§§pop() + §§pop()));
                                       if(_loc14_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    _loc8_ = §§pop();
                                    if(!(_loc15_ || this))
                                    {
                                       break;
                                    }
                                    try
                                    {
                                       while(true)
                                       {
                                          _loc10_ = param1[_loc8_];
                                       }
                                       addr130:
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    _loc9_ = new _loc4_();
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(_loc8_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(1);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() >= 100)
                                                {
                                                   _loc9_.TextField_Rank.text = (_loc8_ + 1 + ".").slice(1,4);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            _loc9_.TextField_Name.text = "-";
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  if(_loc15_ || param2)
                                                                  {
                                                                     _loc9_.TextField_Points.text = "";
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc14_ && _loc3_))
                                                                        {
                                                                           _loc9_.TextField_CountryCode.text = "";
                                                                           continue loop10;
                                                                        }
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = "";
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§?!Q§(_loc11_));
                                                                                    addr433:
                                                                                    addr441:
                                                                                    while(_loc14_ && param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          continue loop37;
                                                                                       }
                                                                                    }
                                                                                    _loc12_ = §§pop();
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[T§(_loc11_));
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             addr423:
                                                                                             §§push(§§pop());
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc11_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   _loc9_.TextField_Name.text = _loc11_;
                                                                                                   loop31:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc9_.TextField_CountryCode.text = _loc12_;
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc9_.TextField_Points.text = _loc10_.score;
                                                                                                         addr384:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc14_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc15_ || this)
                                                                                                            {
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ || param2))
                                                                                                                           {
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           addr373:
                                                                                                                           _loc9_.TextField_Rank.textColor = § O§;
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc9_.TextField_Name.textColor = § O§;
                                                                                                                              addr349:
                                                                                                                              loop19:
                                                                                                                              while(_loc15_)
                                                                                                                              {
                                                                                                                                 _loc9_.TextField_Points.textColor = § O§;
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    _loc9_.TextField_CountryCode.textColor = § O§;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          this.§#S§ = _loc9_;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc15_ || param2)
                                                                                                                                             {
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                             loop20:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr454:
                                                                                                                                                addr482:
                                                                                                                                                loop21:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr458);
                                                                                                                                                   §§push(_loc10_.nickName);
                                                                                                                                                   addr465:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr482:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr318:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr482);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop8;
                                                                                                                              §§goto(addr373);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr366:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr258:
                                                                                                                        loop13:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc9_.y = _loc6_;
                                                                                                                           loop14:
                                                                                                                           while(_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(_loc15_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(19);
                                                                                                                                 if(_loc14_ && param2)
                                                                                                                                 {
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc14_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              loop15:
                                                                                                                              while(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc15_ || this))
                                                                                                                                       {
                                                                                                                                          break loop13;
                                                                                                                                       }
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_.addChild(_loc9_);
                                                                                                                                          while(!_loc14_)
                                                                                                                                          {
                                                                                                                                             _loc7_++;
                                                                                                                                             if(_loc14_ && param2)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             if(_loc14_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                break loop16;
                                                                                                                                             }
                                                                                                                                             if(_loc15_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                §§goto(addr341);
                                                                                                                                             }
                                                                                                                                             §§goto(addr318);
                                                                                                                                          }
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(_loc10_.isPlayer));
                                                                                                                                             if(!(_loc14_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr490:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr481);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                         §§goto(addr465);
                                                                                                                                                      }
                                                                                                                                                      addr464:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr454);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr482);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 §§goto(addr377);
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              §§goto(addr331);
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        addr532:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr492);
                                                                                                               }
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            §§goto(addr464);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr433);
                                                                                          }
                                                                                          §§goto(addr458);
                                                                                       }
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                 }
                                                                                 addr453:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc9_.TextField_Rank.text = _loc8_ + 1 + ".";
                                                                                 }
                                                                                 addr514:
                                                                              }
                                                                              §§goto(addr532);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr487:
                                                                  }
                                                                  §§goto(addr490);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                   }
                                                }
                                                §§goto(addr514);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr453);
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr130);
                     }
                     while(_loc5_.removeChildAt(0), _loc15_);
                     
                     this.§#S§ = null;
                     §§goto(addr84);
                  }
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function §[T§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§8"!§)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop().slice(0,param1.length - 2));
                     if(_loc3_)
                     {
                        addr61:
                        param1 = §§pop();
                        return param1;
                     }
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §?!Q§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            §§push(this.§8"!§);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        loop3:
                        do
                        {
                           §§push(param1);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop().length - 2);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop().charAt(§§pop()) == "X");
                                 if(_loc3_ || this)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr110:
                                                while(true)
                                                {
                                                   §§push(§§pop().length - 2);
                                                   addr113:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().slice(§§pop(),param1.length));
                                                      addr117:
                                                      addr30:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                      }
                                                      if(_loc3_ || param1)
                                                      {
                                                         break;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr30);
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr110);
                        }
                        while(_loc4_ && _loc2_);
                        
                        return §§pop();
                     }
                  }
               }
               §§goto(addr97);
            }
         }
         §§goto(addr108);
      }
      
      public function § 5§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = HighscoreSidebar.§#!D§;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
            while(true)
            {
               _loc3_ = §§pop();
               addr91:
               while(true)
               {
                  continue loop1;
               }
            }
         }
      }
      
      public function §4!b§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§""8§ = null;
         loop0:
         for each(_loc4_ in this.§?1§)
         {
            §§push(_loc4_.levelId == param1);
            if(_loc7_ || this)
            {
               §§push(§§pop());
               if(_loc7_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc4_.§>E§);
                           if(!(_loc8_ && param2))
                           {
                              §§push(this.§8"!§);
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc8_)
                                 {
                                    addr264:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_.§1S§(param2));
                                       if(_loc7_)
                                       {
                                          addr272:
                                          if(§§pop() == false)
                                          {
                                             addr278:
                                             if(!_loc8_)
                                             {
                                                addr277:
                                                if(!param3)
                                                {
                                                   continue;
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§9+§(false);
                                             }
                                             addr278:
                                          }
                                          else
                                          {
                                             §§push(param3);
                                             if(_loc7_)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   this.§9+§(false);
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(this.§29§);
                                                      loop3:
                                                      for(; !_loc8_; while(true)
                                                      {
                                                         §§push(this.§29§);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(this.§29§);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push("MovieClip_LoadingHiScores");
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§pop().setObjectToFront(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr173);
                                                                        }
                                                                        §§goto(addr199);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            break;
                                                         }
                                                         continue loop3;
                                                      },§§goto(addr224))
                                                      {
                                                         §§push("MovieClip_LoadingHiScores");
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(true);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  while(_loc7_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop2;
                                                                  addr173:
                                                               }
                                                               addr239:
                                                               §§pop().setVisibility(§§pop());
                                                               while(_loc7_)
                                                               {
                                                                  this.§29§.setObjectToFront(this.§29§.getItemByName("MovieClip_LoadingHiScores"));
                                                                  loop9:
                                                                  while(!(_loc8_ && this))
                                                                  {
                                                                     this.§6c§(_loc4_.§7P§,_loc4_.§!!T§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ || param3)
                                                                        {
                                                                           this.§,G§();
                                                                           addr199:
                                                                           if(_loc7_)
                                                                           {
                                                                              this.§6"7§(_loc4_.levelId,false);
                                                                              break loop0;
                                                                              addr195:
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr291:
                                                                        while(true)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            addr238:
                                                            §§goto(addr239);
                                                            §§push(true);
                                                         }
                                                         §§goto(addr238);
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr277);
                                             }
                                             §§goto(addr278);
                                          }
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr291);
                                 }
                              }
                              §§goto(addr272);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr264);
               }
            }
            §§goto(addr272);
         }
      }
      
      public function §5!Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§""8§ = null;
         var _loc3_:* = this.§?1§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.§"c§();
            }
         }
      }
      
      public function deActivate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,6§ = null;
         if(_loc2_)
         {
            this.§9+§(false);
            if(!(_loc3_ && _loc2_))
            {
               addr31:
               §§push(this.§29§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     addr48:
                     _loc1_ = this.§29§.getItemByName("HighscoreSidebar") as §,6§;
                     if(!(_loc3_ && _loc1_))
                     {
                        this.§29§.clear();
                        if(_loc2_ || this)
                        {
                           this.§29§ = null;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr48);
         }
         §§goto(addr31);
      }
      
      public function get currentPage() : int
      {
         return this.§'!6§;
      }
      
      public function §`"0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§4!b§(HighscoreSidebar.§#!D§[this.currentPage]);
         }
      }
      
      public function set container(param1:§,6§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§29§ = param1;
         }
      }
      
      public function get container() : §,6§
      {
         return this.§29§;
      }
      
      public function get §]!M§() : String
      {
         return this.§`!k§;
      }
      
      public function get §;!Z§() : String
      {
         return this.§'9§;
      }
      
      public function set §]!M§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§`!k§ = param1;
         }
      }
      
      public function §#![§(param1:String) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         §§push(_loc4_ = int(param1.substring(2)));
         if(!(_loc7_ && _loc3_))
         {
            §§push(int(§§pop() + § T§ * _loc3_));
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            §§push(HighscoreSidebar.§]!p§[int(_loc5_) - 1]);
            if(_loc6_ || _loc3_)
            {
               _loc2_ = §§pop();
               addr86:
               return _loc2_;
            }
         }
         §§goto(addr86);
      }
      
      private function §%!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§2P§.§[!$§.§-n§)
            {
               this.§0!M§();
               if(_loc2_ || _loc2_)
               {
                  if(_loc1_)
                  {
                     addr73:
                     this.§]!4§();
                     loop1:
                     while(true)
                     {
                        this.§29§.getItemByName("TextField_MyScoreName").setVisibility(true);
                        addr56:
                        while(_loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr73);
      }
      
      private function §0!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§29§.getItemByName("TextField_MyScoreName").setVisibility(false);
         }
      }
      
      public function get §-H§() : Boolean
      {
         return this.§#!b§;
      }
      
      public function get §9!Z§() : Boolean
      {
         return this.§'w§;
      }
      
      public function §'"5§() : Boolean
      {
         return this.§#!0§;
      }
      
      private function §]!4§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(_loc2_)
         {
            §§push(§2P§.§[!$§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop().name)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr69:
                     §§push(§2P§.§[!$§.name + ":  ");
                     if(!_loc3_)
                     {
                        §§push(§§pop() + this.§!"§);
                     }
                     _loc1_ = §§pop();
                  }
                  do
                  {
                     (this.§29§.getItemByName("TextField_MyScoreName") as §7!&§).§'!"§.text = _loc1_;
                  }
                  while(_loc3_);
                  
                  addr48:
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr48);
      }
   }
}
