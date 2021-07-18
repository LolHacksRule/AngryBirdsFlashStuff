package §3D§
{
   import § !Y§.§&$§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §7!0§.§";§;
   import §7!B§.§@!^§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar
   {
      
      public static const §>!@§:String = "StateHighScores";
      
      public static const §9"§:String = "StateOverall";
      
      public static const §[x§:String = "StateDisableHighScores";
      
      public static const §`!9§:String = "StateLoadingLevelHighScores";
      
      public static const TOP_OVERALL_SCORES_EPISODE_1:String = "TopOverallScoresEpisode1";
      
      public static const TOP_OVERALL_SCORES_EPISODE_2:String = "TopOverallScoresEpisode2";
      
      public static const TOP_OVERALL_SCORES_EPISODE_3:String = "TopOverallScoresEpisode3";
      
      public static const §?2§:String = "credits_level";
      
      public static const §#;§:Array;
      
      public static const § true§:Array;
      
      public static const §!]§:int = 3;
      
      public static const §0!I§:int = 10;
      
      public static const §-!-§:int = 5;
      
      public static const §!"E§:uint = 16711680;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || HighscoreSidebar)
         {
            §>!@§ = "StateHighScores";
            loop0:
            while(true)
            {
               §9"§ = "StateOverall";
               loop1:
               while(true)
               {
                  §[x§ = "StateDisableHighScores";
                  while(true)
                  {
                     §`!9§ = "StateLoadingLevelHighScores";
                     while(true)
                     {
                        TOP_OVERALL_SCORES_EPISODE_1 = "TopOverallScoresEpisode1";
                        continue loop1;
                        addr42:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                           addr49:
                        }
                     }
                     while(_loc2_ || HighscoreSidebar)
                     {
                        §!]§ = 3;
                        loop10:
                        for(; !_loc1_; if(_loc1_ && _loc2_)
                        {
                           continue;
                        },if(_loc1_)
                        {
                           continue loop0;
                        },§§goto(addr70))
                        {
                           while(true)
                           {
                              §0!I§ = 10;
                              loop12:
                              while(!_loc1_)
                              {
                                 §-!-§ = 5;
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop10;
                                    }
                                    continue loop12;
                                    addr70:
                                    §!"E§ = 16711680;
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    addr35:
                                    if(_loc2_ || HighscoreSidebar)
                                    {
                                       §§goto(addr42);
                                    }
                                    else
                                    {
                                       addr142:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             § true§ = ["I","II","III","IV","V","VI","VII","VIII","IX"];
                                             break loop10;
                                          }
                                          break;
                                          §§goto(addr35);
                                       }
                                       while(_loc2_ || _loc2_)
                                       {
                                          §#;§ = new Array("1-1","1-2","1-3","2-1","2-2","2-3","3-1","3-2","3-3");
                                          §§goto(addr130);
                                       }
                                       addr130:
                                       while(true)
                                       {
                                          TOP_OVERALL_SCORES_EPISODE_3 = "TopOverallScoresEpisode3";
                                          continue loop0;
                                          §§goto(addr142);
                                       }
                                       addr142:
                                       addr166:
                                    }
                                 }
                                 continue loop10;
                              }
                              continue loop1;
                           }
                           §§goto(addr49);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private var §']§:String = null;
      
      private var §]"<§:Array;
      
      private var §@!-§:int = 0;
      
      private var §@@§:String = null;
      
      private var §%-§:Array;
      
      private var §[S§:§ ",§;
      
      private var §["'§:MovieClip = null;
      
      private var §="&§:Number = 0;
      
      private var §'!V§:int = 0;
      
      private var §"">§:Boolean = false;
      
      private var §^2§:Array;
      
      public var §=";§:Boolean = false;
      
      private var §9I§:Boolean = true;
      
      private var § 0§:String;
      
      private var mDefaultEpisodeNameImagePosition1:Number;
      
      private var mDefaultEpisodeNameImagePosition2:Number;
      
      private var mDefaultEpisodeNameImagePosition3:Number;
      
      private var §package§:Boolean;
      
      private var §<!;§:Boolean;
      
      private var §0"0§:Number;
      
      public function HighscoreSidebar()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§^2§ = [];
         }
         while(true)
         {
            super();
            while(!(_loc2_ && this))
            {
               this.reset();
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public function §;D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§=";§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().§=";§ = §§pop();
         }
      }
      
      public function reset() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:§"!g§ = null;
         if(_loc6_)
         {
            this.§]"<§ = [];
            if(!(_loc5_ && _loc2_))
            {
               this.§@!-§ = 0;
            }
         }
         var _loc3_:int = 0;
         for each(_loc1_ in §#;§)
         {
            _loc2_ = new §"!g§(_loc1_);
            if(!_loc5_)
            {
               this.§]"<§.push(_loc2_);
            }
         }
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
         if(_loc6_ || _loc1_)
         {
            this.§]"<§.push(_loc2_);
         }
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
         if(!_loc5_)
         {
            this.§]"<§.push(_loc2_);
         }
         _loc2_ = new §"!g§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
         if(!(_loc5_ && _loc2_))
         {
            this.§]"<§.push(_loc2_);
            while(true)
            {
               this.§@@§ = TOP_OVERALL_SCORES_EPISODE_1;
               loop2:
               while(true)
               {
                  this.§["'§ = null;
                  while(true)
                  {
                     this.§="&§ = 0;
                     loop4:
                     while(!_loc5_)
                     {
                        addr152:
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        this.§0"0§ = 0;
                        addr159:
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              continue loop2;
                           }
                           addr169:
                           while(true)
                           {
                              this.§"">§ = false;
                              loop7:
                              while(true)
                              {
                                 this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
                                 addr145:
                                 while(true)
                                 {
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr152);
                                    §§goto(addr159);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'!V§ = 0;
            §§goto(addr169);
         }
      }
      
      public function §=y§(param1:§ ",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§[S§ = param1;
            loop0:
            while(true)
            {
               this.§^2§ = this.§[S§.getItemByName("TextField_MyScoreNumber").mClip.filters;
               do
               {
                  this.mDefaultEpisodeNameImagePosition1 = this.§[S§.getItemByName("MovieClip_Moon").x;
                  do
                  {
                     this.mDefaultEpisodeNameImagePosition2 = this.§[S§.getItemByName("MovieClip_Mc").x;
                     continue loop0;
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_ && param1);
               
            }
         }
      }
      
      private function §;"&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[S§.getItemByName("Container_Highscores").setVisibility(param1);
         }
      }
      
      public function §4"1§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§[S§);
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
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(this.§[S§);
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push("Button_Credits");
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
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
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§push(this.§[S§);
                                                               break;
                                                            }
                                                            addr154:
                                                            §§push(this.§[S§);
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr157:
                                                            §§push("Button_Credits");
                                                            if(_loc3_ && param1)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§pop().getItemByName(§§pop()).mClip.alpha = 1;
                                                            addr165:
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(this.§[S§);
                                                               addr130:
                                                               while(true)
                                                               {
                                                                  §§push("Button_Credits");
                                                                  addr131:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                     addr132:
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        §§pop().setVisibility(§§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr178:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop4;
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               this.§package§ = param1;
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               addr126:
                                                               while(true)
                                                               {
                                                                  continue loop7;
                                                               }
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               return;
                                                               addr36:
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   §§goto(addr28);
                                                }
                                                §§goto(addr165);
                                             }
                                             addr109:
                                             if(_loc2_ || param1)
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue loop2;
                                                }
                                                §§pop().mClip.alpha = 0.6;
                                                §§goto(addr126);
                                             }
                                             §§goto(addr132);
                                          }
                                          addr94:
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                §§goto(addr109);
                                                §§push(§§pop().getItemByName(§§pop()));
                                             }
                                             else
                                             {
                                                §§goto(addr157);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr130);
                                 }
                                 break;
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr94);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §2E§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push("Button_Login");
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
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!param1)
                           {
                              §§push(this.§[S§);
                              if(!_loc3_)
                              {
                                 §§push("Button_Login");
                                 if(_loc2_)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop().mClip.alpha = 0.6;
                                          if(_loc2_)
                                          {
                                             addr43:
                                             break;
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   break;
                                                }
                                                addr99:
                                                while(true)
                                                {
                                                   §§push(this.§[S§);
                                                   addr101:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push("Button_Login");
                                                      while(true)
                                                      {
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                         addr105:
                                                         while(true)
                                                         {
                                                            §§pop().mClip.alpha = 1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(_loc2_)
                                             {
                                                §§push(this.§[S§);
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push("Button_Login");
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc2_ || param1))
                                                            {
                                                               break;
                                                               addr70:
                                                            }
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            while(_loc2_ || _loc3_)
                                                            {
                                                               §§push(true);
                                                               if(_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr50:
                                                   }
                                                   §§goto(addr101);
                                                   §§goto(addr104);
                                                }
                                                continue loop0;
                                                §§goto(addr105);
                                             }
                                             continue loop4;
                                          }
                                          break;
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr50);
                              }
                              §§goto(addr47);
                           }
                           §§goto(addr99);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §0!s§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push("Button_Logout");
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
                        §§pop().setEnabled(§§pop());
                        while(true)
                        {
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§[S§);
                                    addr104:
                                    while(true)
                                    {
                                       §§push("Button_Logout");
                                       addr105:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop().getItemByName(§§pop()));
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§pop().mClip.alpha = 1;
                                          }
                                       }
                                    }
                                 }
                                 addr102:
                              }
                              while(_loc2_)
                              {
                                 §§push(this.§[S§);
                              }
                              continue;
                              addr113:
                           }
                           else
                           {
                              §§push(this.§[S§);
                              if(_loc2_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push("Button_Logout");
                                    if(_loc2_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                §§pop().mClip.alpha = 0.6;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                while(!_loc2_)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                }
                                                break;
                                             }
                                             §§goto(addr108);
                                             §§goto(addr113);
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                             if(_loc3_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§goto(addr93);
                                          }
                                          continue loop3;
                                          addr85:
                                       }
                                       else
                                       {
                                          §§goto(addr105);
                                       }
                                       §§goto(addr108);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr85);
                                    }
                                    addr84:
                                 }
                                 else
                                 {
                                    §§goto(addr104);
                                 }
                                 §§goto(addr105);
                              }
                           }
                           while(_loc2_)
                           {
                              §§goto(addr84);
                              §§push("Button_Logout");
                           }
                           continue loop0;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §@Z§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push("Button_Tutorial");
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
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(param1);
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(this.§[S§);
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          §§push("Button_Tutorial");
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr155);
                                                }
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      loop8:
                                                      for(; !_loc3_; if(!(_loc3_ && _loc3_))
                                                      {
                                                         return;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            addr23:
                                                            addr116:
                                                            while(true)
                                                            {
                                                               this.§<!;§ = param1;
                                                               if(!(_loc2_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc3_ && this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(this.§[S§);
                                                                        break loop5;
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr99:
                                                               }
                                                               continue loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr23);
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop3;
                                                }
                                                addr129:
                                             }
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop2;
                                                }
                                                §§pop().mClip.alpha = 0.6;
                                                §§goto(addr116);
                                             }
                                             addr111:
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr111);
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                }
                                                else
                                                {
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr168);
                                             }
                                             addr121:
                                             while(_loc2_ || _loc3_)
                                             {
                                                §§goto(addr129);
                                                §§push(§§pop().getItemByName(§§pop()));
                                             }
                                             addr105:
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr153);
                                       §§goto(addr153);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr121);
                                       §§goto(addr168);
                                    }
                                    addr120:
                                 }
                                 break;
                              }
                              addr168:
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr153:
                                 §§push(this.§[S§);
                                 §§push("Button_Tutorial");
                                 while(true)
                                 {
                                    §§push(§§pop().getItemByName(§§pop()));
                                    addr155:
                                    while(true)
                                    {
                                       §§pop().mClip.alpha = 1;
                                    }
                                 }
                                 addr154:
                              }
                              while(true)
                              {
                                 §§push(this.§[S§);
                              }
                              addr168:
                              §§goto(addr120);
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr105);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function §^!Z§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push("Button_Language_English");
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
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(this.§[S§);
                           loop5:
                           while(!_loc2_)
                           {
                              §§push("Button_Language_Spanish");
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().getItemByName(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().setEnabled(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(param1)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§[S§);
                                                loop19:
                                                while(true)
                                                {
                                                   addr380:
                                                   §§push(§§pop().getItemByName("Button_Language_English"));
                                                   while(true)
                                                   {
                                                      §§pop().mClip.alpha = 1;
                                                      loop33:
                                                      while(!(_loc2_ && _loc3_))
                                                      {
                                                         §§pop().mClip.alpha = 1;
                                                         loop34:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(this.§[S§);
                                                            if(_loc3_)
                                                            {
                                                               §§push("MovieClip_Language_Selected_Spanish");
                                                               loop35:
                                                               while(true)
                                                               {
                                                                  addr279:
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(_loc2_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(true);
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                        addr290:
                                                                        addr360:
                                                                     }
                                                                     §§pop().setVisibility(§§pop());
                                                                     while(true)
                                                                     {
                                                                        addr234:
                                                                        §§push(this.§[S§);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr236:
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push("MovieClip_Language_Selected_Spanish");
                                                                           continue loop35;
                                                                        }
                                                                        addr342:
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push("Button_Language_Spanish");
                                                                           loop27:
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(§§pop().getItemByName(§§pop()));
                                                                              while(_loc3_ || _loc2_)
                                                                              {
                                                                                 §§pop().mClip.alpha = 1;
                                                                                 §§push(this.§[S§);
                                                                                 while(true)
                                                                                 {
                                                                                    addr322:
                                                                                    §§push("Button_Language_Spanish");
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       break loop36;
                                                                                    }
                                                                                    addr294:
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push("MovieClip_Language_Selected_Spanish");
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       addr251:
                                                                                       continue loop33;
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§pop().mClip.alpha = 1;
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             continue loop34;
                                                                                          }
                                                                                          §§push(this.§[S§);
                                                                                          while(true)
                                                                                          {
                                                                                             addr178:
                                                                                             §§push(§§pop().getItemByName("MovieClip_Language_Selected_Spanish"));
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr188);
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr223);
                                                                                          continue loop34;
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 addr370:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setVisibility(§§pop());
                                                                                    addr371:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              addr346:
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr361:
                                                                        §§push("Button_Language_English");
                                                                        if(_loc2_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr369);
                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§push(true);
                                                                     addr188:
                                                                     continue loop1;
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        addr214:
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              addr223:
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 addr20:
                                                                                 return;
                                                                                 addr230:
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr371);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr290);
                                                                        }
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§pop().setVisibility(§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr294);
                                                                     §§push(this.§[S§);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr360);
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr384);
                                          }
                                          else
                                          {
                                             §§push(this.§[S§);
                                             loop10:
                                             while(_loc3_ || param1)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push("Button_Language_English");
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                         loop11:
                                                         while(!(_loc2_ && _loc3_))
                                                         {
                                                            §§pop().mClip.alpha = 0.6;
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§[S§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push("Button_Language_Spanish");
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              §§pop().mClip.alpha = 0.6;
                                                                              loop15:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(this.§[S§);
                                                                                 loop16:
                                                                                 for(; _loc3_; §§push(this.§[S§),if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 })
                                                                                 {
                                                                                    §§push("MovieClip_Language_Selected_Spanish");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          §§push(§§pop().getItemByName(§§pop()));
                                                                                          while(_loc3_ || param1)
                                                                                          {
                                                                                             §§pop().mClip.alpha = 0.6;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§goto(addr356);
                                                                                                         }
                                                                                                         §§goto(addr336);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop15;
                                                                                                addr58:
                                                                                                §§pop().mClip.alpha = 0.6;
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr20);
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                          addr85:
                                                                                       }
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    §§goto(addr178);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr279);
                                                                     addr123:
                                                                  }
                                                                  break;
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop().getItemByName("MovieClip_Language_Selected_English"));
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc2_ && _loc3_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr58);
                                                                        }
                                                                        §§goto(addr123);
                                                                     }
                                                                     §§goto(addr85);
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr361);
                                                }
                                                §§goto(addr275);
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      public function §<[§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§[S§);
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
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!param1)
                           {
                              §§push(this.§[S§);
                              loop5:
                              for(; !_loc3_; while(true)
                              {
                                 §§push(this.§[S§);
                                 if(_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 §§push("MovieClip_SoundOff");
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§pop().mClip.alpha = 0.6;
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   addr201:
                                                   while(true)
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                }
                                                else
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(this.§[S§);
                                                         break loop5;
                                                      }
                                                      addr163:
                                                      while(true)
                                                      {
                                                         §§pop().mClip.alpha = 1;
                                                         continue loop16;
                                                      }
                                                   }
                                                   addr166:
                                                }
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr163);
                                          }
                                          §§goto(addr166);
                                       }
                                       else
                                       {
                                          §§goto(addr90);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr162:
                                    }
                                    §§goto(addr163);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr139);
                                 }
                              },§§goto(addr19))
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push("Button_Mute");
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       while(!_loc3_)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                §§pop().mClip.alpha = 0.6;
                                                while(_loc2_ || _loc3_)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr208:
                                                   addr208:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(this.§[S§);
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            addr184:
                                                            §§push("Button_Mute");
                                                            while(_loc3_)
                                                            {
                                                               §§goto(addr184);
                                                            }
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            §§push(true);
                                                            while(true)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               addr197:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[S§);
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr185:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push("Button_Mute");
                                                            }
                                                            addr203:
                                                         }
                                                         addr204:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                addr19:
                                                return;
                                                addr150:
                                                addr119:
                                             }
                                             while(true)
                                             {
                                                §§pop().mClip.alpha = 1;
                                                §§goto(addr208);
                                                §§goto(addr204);
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§pop().setVisibility(§§pop());
                                             §§goto(addr150);
                                          }
                                          else
                                          {
                                             §§goto(addr196);
                                          }
                                       }
                                       addr90:
                                       addr139:
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr177);
                              }
                              while(true)
                              {
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr201);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §"!r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = false;
         if(_loc3_ || _loc1_)
         {
            if(§&$§.§[!1§.§^!2§() == "en")
            {
               addr114:
               if(_loc3_ || _loc2_)
               {
                  §§push(true);
               }
               loop7:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§[S§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().getItemByName("MovieClip_Language_Selected_Spanish"));
                        loop3:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop5:
                              while(true)
                              {
                                 §§pop().setVisibility(§§pop());
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop7;
                                    }
                                    §§push(this.§[S§);
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop().getItemByName("MovieClip_Language_Selected_English"));
                                    if(_loc2_ && this)
                                    {
                                       continue loop3;
                                    }
                                    §§push(_loc1_);
                                    if(_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop().setVisibility(§§pop());
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    addr89:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
               addr114:
            }
            else
            {
               §§push(false);
               if(_loc3_)
               {
                  _loc1_ = §§pop();
                  §§goto(addr89);
               }
               §§goto(addr114);
            }
            _loc1_ = §§pop();
         }
         §§goto(addr114);
      }
      
      public function §`"#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§[S§);
            loop0:
            while(true)
            {
               §§push(§§pop().getItemByName("Button_Selected_Levels"));
               addr78:
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  addr82:
                  while(true)
                  {
                     §§pop().setVisibility(§§pop());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §?b§(param1:String) : §"!g§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§"!g§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§]"<§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  §§push(_loc2_ == null);
                  if(!_loc6_)
                  {
                     §§push(!§§pop());
                     if(!(_loc6_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              addr66:
                              §§pop();
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr73:
                              if(_loc2_.levelId == param1)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr66);
               }
               §§goto(addr73);
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §0!H§(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§"!g§ = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               if("BUTTON_SCORES" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(_loc7_)
                     {
                     }
                  }
                  else
                  {
                     addr357:
                     §§push(4);
                     if(!(_loc7_ && this))
                     {
                        addr365:
                     }
                  }
               }
               else if("BUTTON_OVERALL" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§push(1);
                     if(_loc7_)
                     {
                        §§goto(addr365);
                     }
                  }
                  else
                  {
                     addr329:
                     §§push(2);
                     if(!(_loc6_ || param3))
                     {
                        addr387:
                     }
                  }
               }
               else if("RIGHT" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr329);
                  }
                  else
                  {
                     §§goto(addr357);
                  }
               }
               else if("LEFT" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(3);
                     if(!_loc6_)
                     {
                     }
                  }
                  else
                  {
                     §§goto(addr357);
                  }
               }
               else
               {
                  if("UP" === _loc5_)
                  {
                     if(_loc6_ || param1)
                     {
                        §§goto(addr357);
                     }
                     addr392:
                     switch(§§pop())
                     {
                        case 0:
                           this.changeState(§>!@§);
                           if(_loc6_)
                           {
                              this.§,^§(HighscoreSidebar.§#;§[this.§@!-§]);
                              break loop0;
                              addr143:
                           }
                           break loop0;
                        case 1:
                           this.changeState(§9"§);
                           break;
                        case 2:
                           §§push(this.§']§);
                           if(_loc6_)
                           {
                              addr109:
                              if(§§pop() == §9"§)
                              {
                                 addr110:
                                 if(_loc6_ || this)
                                 {
                                    this.§,^§(this.§+!`§());
                                    addr121:
                                 }
                                 else
                                 {
                                    break loop0;
                                    addr127:
                                 }
                              }
                              else
                              {
                                 this.§,^§(HighscoreSidebar.§#;§[this.§5!F§(this.§@!-§)]);
                                 addr98:
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                              }
                              addr54:
                              break loop0;
                           }
                           continue;
                        case 3:
                           §§push(this.§']§);
                           if(_loc6_)
                           {
                              §§push(§9"§);
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       this.§,^§(HighscoreSidebar.§#;§[this.§7!&§(this.§@!-§)]);
                                       if(!_loc7_)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         addr152:
                                                         break loop0;
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr143);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr54);
                                             }
                                             §§goto(addr121);
                                          }
                                          else
                                          {
                                             addr72:
                                             this.§,^§(this.§0!§());
                                             if(_loc6_)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§goto(addr152);
                                                }
                                                else
                                                {
                                                   §§goto(addr98);
                                                }
                                             }
                                             else
                                             {
                                                addr167:
                                                §§push(this.§?b§(this.§ 0§));
                                                if(!(_loc7_ && param3))
                                                {
                                                   if((_loc4_ = §§pop()) != null)
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         _loc4_.§4!S§();
                                                         if(_loc6_)
                                                         {
                                                            this.§-§(this.§ 0§,false);
                                                            if(_loc6_)
                                                            {
                                                               addr242:
                                                               break loop0;
                                                               addr211:
                                                            }
                                                         }
                                                         addr248:
                                                         §§push(this.§?b§(this.§ 0§));
                                                         if(_loc6_)
                                                         {
                                                            if(_loc4_ = §§pop())
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  _loc4_.§case §();
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     this.§-§(this.§ 0§,false);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr279:
                                                            if(_loc4_ = §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  _loc4_.§case §();
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     this.§-§(this.§@@§,false);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                   §§goto(addr211);
                                                }
                                                else
                                                {
                                                   addr216:
                                                   if((_loc4_ = §§pop()) != null)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         _loc4_.§4!S§();
                                                         if(_loc6_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      this.§-§(this.§@@§,false);
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                          §§goto(addr54);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr72);
                                 }
                                 else
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              else
                              {
                                 addr159:
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       §§goto(addr167);
                                    }
                                    break loop0;
                                 }
                                 §§push(this.§?b§(this.§@@§));
                              }
                              §§goto(addr216);
                           }
                           else
                           {
                              addr158:
                              §§push(§9"§);
                           }
                           §§goto(addr159);
                        case 4:
                           §§push(this.§']§);
                           if(!_loc7_)
                           {
                              §§goto(addr158);
                           }
                           continue;
                        case 5:
                           if(this.§']§ == §9"§)
                           {
                              §§goto(addr248);
                           }
                           else
                           {
                              §§push(this.§?b§(this.§@@§));
                           }
                           §§goto(addr279);
                     }
                     this.§,^§(this.§ 0§);
                     §§goto(addr127);
                  }
                  else
                  {
                     if("DOWN" !== _loc5_)
                     {
                        §§goto(addr392);
                        §§push(6);
                     }
                     §§goto(addr392);
                  }
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr387);
                  }
               }
               §§goto(addr392);
            }
            §§goto(addr329);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§']§ = param1;
         }
         var _loc3_:* = param1;
         if(_loc5_ || param1)
         {
            §§push(§>!@§);
            if(!(_loc4_ && param1))
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr1658:
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr1739:
                        }
                     }
                     else
                     {
                        addr1709:
                        §§push(2);
                        if(_loc5_ || param1)
                        {
                           addr1717:
                        }
                     }
                  }
                  else
                  {
                     §§push(§9"§);
                     if(!(_loc4_ && param1))
                     {
                        addr1670:
                        §§push(_loc3_);
                        if(_loc5_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(1);
                                 if(!(_loc4_ && param2))
                                 {
                                    §§goto(addr1744);
                                 }
                                 else
                                 {
                                    §§goto(addr1717);
                                 }
                              }
                              §§goto(addr1744);
                           }
                           else
                           {
                              §§push(§[x§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr1698:
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    addr1701:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr1709);
                                       }
                                       else
                                       {
                                          addr1721:
                                          §§push(3);
                                          if(_loc5_ || this)
                                          {
                                             §§goto(addr1739);
                                          }
                                          §§goto(addr1744);
                                       }
                                    }
                                    else
                                    {
                                       addr1719:
                                       §§push(§`!9§);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr1721);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr1721);
                                 }
                                 else
                                 {
                                    addr1744:
                                    loop85:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(this.§[S§);
                                          loop0:
                                          while(true)
                                          {
                                             §§push("MovieClip_LoadingHiScores");
                                             addr1619:
                                             while(true)
                                             {
                                                addr1621:
                                                addr1622:
                                                §§pop().getItemByName(§§pop()).setVisibility(false);
                                                §§push(this.§[S§);
                                                addr1605:
                                                while(true)
                                                {
                                                   §§push("TextField_Level_Num");
                                                   addr1606:
                                                   while(true)
                                                   {
                                                      addr1607:
                                                      (§§pop().getItemByName(§§pop()) as §&!>§).§ !'§.text = "";
                                                      addr1612:
                                                      §§push(this.§[S§);
                                                      §§push(this.§[S§);
                                                      do
                                                      {
                                                         §§pop().setObjectToFront(§§pop().getItemByName("Container_SideBar_Tab_Scores"));
                                                         this.§[S§.setObjectToFront(this.§[S§.getItemByName("Container_Board_Selection"));
                                                         §§push(this.§[S§);
                                                         §§push(this.§[S§);
                                                      }
                                                      while(_loc4_);
                                                      
                                                      addr1581:
                                                      §§pop().setObjectToFront(§§pop().getItemByName("Container_Highscores"));
                                                      §§push(this.§[S§);
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       case 1:
                                          §§push(this.§[S§);
                                          loop10:
                                          while(true)
                                          {
                                             addr1423:
                                             §§push(§§pop().getItemByName("MovieClip_LoadingHiScores"));
                                             loop11:
                                             while(_loc5_ || param1)
                                             {
                                                §§pop().setVisibility(false);
                                                if(!_loc4_)
                                                {
                                                   addr1398:
                                                   §§push(this.§[S§);
                                                   §§push("TextField_Level_Num");
                                                   loop12:
                                                   for(; _loc5_ || _loc3_; §§push("TextField_Level_Num"),if(!(_loc5_ || this))
                                                   {
                                                      continue;
                                                   },§§push(§§pop().getItemByName(§§pop())),§§push(false),if(!(_loc4_ && param2))
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      addr1205:
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr1152:
                                                            §§push(this.§[S§);
                                                            §§push("Button_ArrowUp");
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr1161:
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr1171:
                                                                  §§pop().setVisibility(true);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr1126:
                                                                     §§push(this.§[S§);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr1135:
                                                                        §§push(§§pop().getItemByName("Button_ArrowDown"));
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr1138:
                                                                           §§push(true);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr1141:
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 this.§;a§();
                                                                                 §§goto(addr1108);
                                                                              }
                                                                              §§goto(addr1470);
                                                                           }
                                                                           §§goto(addr1547);
                                                                        }
                                                                        §§goto(addr1220);
                                                                     }
                                                                     §§goto(addr1612);
                                                                  }
                                                                  §§goto(addr1578);
                                                               }
                                                               §§goto(addr1511);
                                                            }
                                                            §§goto(addr1475);
                                                         }
                                                         §§goto(addr1451);
                                                      }
                                                      §§goto(addr1253);
                                                   },§§goto(addr1504))
                                                   {
                                                      (§§pop().getItemByName(§§pop()) as §&!>§).§ !'§.text = "";
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§[S§);
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.§[S§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().getItemByName("Container_Sidebar_Tab_Overall"));
                                                                     addr1393:
                                                                     while(true)
                                                                     {
                                                                        §§pop().setObjectToFront(§§pop());
                                                                        addr1394:
                                                                        while(true)
                                                                        {
                                                                           addr1374:
                                                                           §§push(this.§[S§);
                                                                           §§push(this.§[S§);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push("Container_Board_Selection");
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr1380:
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop().setObjectToFront(§§pop());
                                                                                    addr1349:
                                                                                    §§push(this.§[S§);
                                                                                    §§push(this.§[S§);
                                                                                    §§push("Container_Highscores");
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(§§pop().getItemByName(§§pop()));
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          §§pop().setObjectToFront(§§pop());
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             addr1299:
                                                                                             §§push(this.§[S§);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr1308:
                                                                                                §§push(this.§[S§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr1552);
                                                                                          }
                                                                                          §§goto(addr1548);
                                                                                       }
                                                                                       §§goto(addr1591);
                                                                                       addr1360:
                                                                                    }
                                                                                    §§goto(addr1581);
                                                                                    addr1383:
                                                                                 }
                                                                                 §§goto(addr1581);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr1591);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                               addr1178:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            §§goto(addr1482);
                                                         }
                                                         §§goto(addr1612);
                                                      }
                                                      §§goto(addr1504);
                                                   }
                                                }
                                                §§goto(addr1482);
                                             }
                                             §§goto(addr1460);
                                          }
                                          break;
                                       case 2:
                                          §§push(this.§[S§);
                                          loop25:
                                          while(true)
                                          {
                                             addr1074:
                                             §§push("MovieClip_LoadingHiScores");
                                             if(_loc5_ || param1)
                                             {
                                                addr1082:
                                                §§push(§§pop().getItemByName(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(false);
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         loop27:
                                                         while(true)
                                                         {
                                                            addr1045:
                                                            §§push(this.§[S§);
                                                            §§push("Button_ArrowLeft");
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop().getItemByName(§§pop()));
                                                               loop28:
                                                               while(!_loc4_)
                                                               {
                                                                  §§push(false);
                                                                  continue loop26;
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr935:
                                                                           §§pop().setVisibility(false);
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(this.§[S§);
                                                                              loop35:
                                                                              while(!(_loc4_ && param1))
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr868:
                                                                                       §§push("Highscore_Holder");
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             addr884:
                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                             §§push(false);
                                                                                             if(!(_loc5_ || _loc3_))
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§pop().setVisibility(§§pop());
                                                                                                addr899:
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§[S§);
                                                                                                      loop36:
                                                                                                      for(; !_loc4_; if(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      },if(!_loc4_)
                                                                                                      {
                                                                                                         addr793:
                                                                                                         §§push(§§pop().getItemByName("Button_ArrowUp"));
                                                                                                         §§push(false);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                            addr740:
                                                                                                            §§push(this.§[S§);
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr750:
                                                                                                                  §§push(§§pop().getItemByName("Button_ArrowDown"));
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               §§goto(addr1504);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1152);
                                                                                                            }
                                                                                                            addr797:
                                                                                                         }
                                                                                                         §§goto(addr1138);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop32:
                                                                                                         while(!_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               addr954:
                                                                                                               §§push("Button_ArrowRight");
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr966:
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr969:
                                                                                                                           §§push(false);
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§pop().setVisibility(§§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr912:
                                                                                                                                       §§push(this.§[S§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr915:
                                                                                                                                          §§push("TextField_Leaderboards");
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1504);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1219);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1578);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr1067:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 addr722:
                                                                                                                                 continue loop25;
                                                                                                                                 addr722:
                                                                                                                                 if(!(_loc5_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    this.§<"0§(false);
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                          {
                                                                                                                                             break loop85;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1591);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1412);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break loop85;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1581);
                                                                                                                              }
                                                                                                                              §§goto(addr1622);
                                                                                                                           }
                                                                                                                           §§goto(addr1529);
                                                                                                                        }
                                                                                                                        §§goto(addr1293);
                                                                                                                     }
                                                                                                                     §§goto(addr1545);
                                                                                                                  }
                                                                                                                  §§goto(addr1282);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                        {
                                                                                                                           addr1026:
                                                                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                                                                           §§push(false);
                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                           {
                                                                                                                              §§pop().setEnabled(§§pop());
                                                                                                                              addr1034:
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 addr990:
                                                                                                                                 §§push(this.§[S§);
                                                                                                                                 §§push("Button_ArrowLeft");
                                                                                                                                 if(_loc5_ || param2)
                                                                                                                                 {
                                                                                                                                    addr999:
                                                                                                                                    §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                    §§push(false);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop().setVisibility(§§pop());
                                                                                                                                       §§push(this.§[S§);
                                                                                                                                       continue loop32;
                                                                                                                                       addr1003:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1294);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1292);
                                                                                                                              }
                                                                                                                              §§goto(addr1287);
                                                                                                                           }
                                                                                                                           §§goto(addr1555);
                                                                                                                        }
                                                                                                                        §§goto(addr1527);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     §§goto(addr954);
                                                                                                                  }
                                                                                                                  §§goto(addr1251);
                                                                                                                  addr1015:
                                                                                                               }
                                                                                                               §§goto(addr1527);
                                                                                                            }
                                                                                                            §§goto(addr1455);
                                                                                                         }
                                                                                                         §§goto(addr1294);
                                                                                                      })
                                                                                                      {
                                                                                                         §§push(§§pop().getItemByName("TextField_PracticeText"));
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr815:
                                                                                                               §§push(true);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                  addr816:
                                                                                                                  if(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(this.§[S§);
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        §§goto(addr1383);
                                                                                                                     }
                                                                                                                     §§goto(addr1295);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr1205);
                                                                                                               addr815:
                                                                                                            }
                                                                                                            §§goto(addr1475);
                                                                                                         }
                                                                                                         §§goto(addr1251);
                                                                                                      }
                                                                                                      §§goto(addr1398);
                                                                                                   }
                                                                                                   §§goto(addr1141);
                                                                                                }
                                                                                                §§goto(addr1108);
                                                                                             }
                                                                                             §§goto(addr1223);
                                                                                          }
                                                                                          §§goto(addr1527);
                                                                                       }
                                                                                       §§goto(addr1235);
                                                                                    }
                                                                                    §§goto(addr1291);
                                                                                 }
                                                                                 §§goto(addr1242);
                                                                              }
                                                                              §§goto(addr1126);
                                                                           }
                                                                           §§goto(addr1270);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop28;
                                                                     addr751:
                                                                     if(!(_loc5_ || param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr766:
                                                                        §§push(false);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr815);
                                                                        }
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           this.§-!2§();
                                                                           §§goto(addr722);
                                                                           addr776:
                                                                        }
                                                                     }
                                                                     §§goto(addr1294);
                                                                  }
                                                                  §§goto(addr1268);
                                                               }
                                                               §§goto(addr1236);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1260);
                                                      }
                                                   }
                                                   §§goto(addr1607);
                                                }
                                                §§goto(addr1486);
                                             }
                                             break;
                                             addr1007:
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr1015);
                                             §§push("Button_ArrowRight");
                                          }
                                          §§goto(addr1619);
                                       case 3:
                                          §§push(this.§[S§);
                                          loop39:
                                          for(; !(_loc4_ && param1); if(!(_loc5_ || this))
                                          {
                                             continue;
                                          },§§push("Button_ArrowDown"),if(!_loc4_)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr1460);
                                             }
                                             §§goto(addr1135);
                                          },§§goto(addr750))
                                          {
                                             §§push("MovieClip_LoadingHiScores");
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   loop40:
                                                   for(; !_loc4_; if(_loc4_ && param2)
                                                   {
                                                      continue;
                                                   },if(_loc5_)
                                                   {
                                                      §§goto(addr325);
                                                      §§push(false);
                                                   },§§goto(addr1407))
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(true);
                                                            loop41:
                                                            while(_loc5_ || param2)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  loop42:
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(this.§[S§);
                                                                     loop43:
                                                                     while(!(_loc4_ && param2))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.§[S§);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().getItemByName("MovieClip_LoadingHiScores"));
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§pop().setObjectToFront(§§pop());
                                                                                                   loop44:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§[S§);
                                                                                                      loop45:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push("Button_ArrowLeft");
                                                                                                               loop46:
                                                                                                               while(!_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                        loop47:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                           loop48:
                                                                                                                           while(_loc5_)
                                                                                                                           {
                                                                                                                              §§pop().setEnabled(§§pop());
                                                                                                                              loop49:
                                                                                                                              for(; !_loc4_; if(!(_loc5_ || param2))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },if(_loc5_)
                                                                                                                              {
                                                                                                                                 this.§2E§(false);
                                                                                                                                 continue loop44;
                                                                                                                              },§§goto(addr1447))
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§[S§);
                                                                                                                                    loop50:
                                                                                                                                    while(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                       {
                                                                                                                                          §§push("Button_ArrowRight");
                                                                                                                                          loop51:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                             loop52:
                                                                                                                                             while(!(_loc4_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      loop53:
                                                                                                                                                      for(; !(_loc4_ && this); while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                                                                  while(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr344);
                                                                                                                                                                     §§push(this.§[S§);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1572);
                                                                                                                                                                  addr436:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1026);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop53;
                                                                                                                                                         §§goto(addr366);
                                                                                                                                                      },§§goto(addr884))
                                                                                                                                                      {
                                                                                                                                                         §§pop().setEnabled(§§pop());
                                                                                                                                                         loop54:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[S§);
                                                                                                                                                            loop55:
                                                                                                                                                            while(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push("Button_ArrowLeft");
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                                 while(!(_loc4_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().setVisibility(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§[S§);
                                                                                                                                                                                       addr447:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr954);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr935);
                                                                                                                                                                                 addr501:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1504);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop47;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1082);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1374);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1178);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr990);
                                                                                                                                                            loop78:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr275:
                                                                                                                                                                        §§push(this.§[S§);
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop39;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop45;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr447);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop75:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("Button_ArrowUp");
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr239:
                                                                                                                                                                                                   if(!(_loc5_ || param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().setVisibility(§§pop());
                                                                                                                                                                                                            continue loop78;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr501);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr366:
                                                                                                                                                                                                         loop69:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§[S§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc5_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push("TextField_PracticeText");
                                                                                                                                                                                                                                             if(!(_loc4_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr301:
                                                                                                                                                                                                                                                      if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop40;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop52;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr416:
                                                                                                                                                                                                                                                      while(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                         §§goto(addr301);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1196);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1546);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1135);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr999);
                                                                                                                                                                                                                                                      addr354:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1135);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1407);
                                                                                                                                                                                                                                                addr299:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr804);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1045);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr344:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push("Highscore_Holder");
                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr354);
                                                                                                                                                                                                                                                   §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr868);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1527);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1007);
                                                                                                                                                                                                                                    §§goto(addr1007);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr912);
                                                                                                                                                                                                                                 addr279:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1238);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1034);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr722);
                                                                                                                                                                                                                        addr392:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1171);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop48;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr463:
                                                                                                                                                                                                            while(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().setVisibility(§§pop());
                                                                                                                                                                                                               while(!(_loc4_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§[S§);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push("TextField_Leaderboards");
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr416);
                                                                                                                                                                                                                        §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr915);
                                                                                                                                                                                                                     addr412:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1442);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr935);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr969);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr999);
                                                                                                                                                                                                         addr366:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr935);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1237);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr299);
                                                                                                                                                                                                addr177:
                                                                                                                                                                                                §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                                                                                if(_loc4_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().setVisibility(§§pop());
                                                                                                                                                                                                               while(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§-!2§();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§@Z§(false);
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr126:
                                                                                                                                                                                                                        if(_loc5_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop49;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr392);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(!(_loc4_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§[S§);
                                                                                                                                                                                                                              continue loop75;
                                                                                                                                                                                                                              §§goto(addr126);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr333:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1003);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop85;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop49;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1530);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(_loc5_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().setVisibility(§§pop());
                                                                                                                                                                                                                  §§goto(addr333);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr766);
                                                                                                                                                                                                               addr325:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr815);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr247);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr884);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr804);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr494);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr463);
                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                §§goto(addr239);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr793);
                                                                                                                                                                                             addr460:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1152);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr793);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr412);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr279);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1475);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1171);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop54;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr816);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1539);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1161);
                                                                                                                                                }
                                                                                                                                                §§goto(addr966);
                                                                                                                                             }
                                                                                                                                             §§goto(addr751);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1232);
                                                                                                                                    }
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1455);
                                                                                                                              }
                                                                                                                              §§goto(addr1433);
                                                                                                                           }
                                                                                                                           §§goto(addr1432);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1537);
                                                                                                                  }
                                                                                                                  §§goto(addr1045);
                                                                                                               }
                                                                                                               §§goto(addr990);
                                                                                                            }
                                                                                                            §§goto(addr1349);
                                                                                                         }
                                                                                                         §§goto(addr780);
                                                                                                      }
                                                                                                      §§goto(addr740);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && param2))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               this.§0!s§(false);
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           this.§<"0§(false);
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr55);
                                                                                                                           }
                                                                                                                           break loop85;
                                                                                                                        }
                                                                                                                        §§goto(addr509);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                                  §§goto(addr148);
                                                                                                               }
                                                                                                               break loop85;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop44;
                                                                                                      }
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1600);
                                                                                             }
                                                                                             §§goto(addr1571);
                                                                                          }
                                                                                          §§goto(addr1380);
                                                                                       }
                                                                                       §§goto(addr1328);
                                                                                    }
                                                                                    §§goto(addr1589);
                                                                                 }
                                                                                 §§goto(addr1569);
                                                                              }
                                                                              §§goto(addr1349);
                                                                           }
                                                                           §§goto(addr1308);
                                                                        }
                                                                        §§goto(addr1589);
                                                                     }
                                                                     §§goto(addr1299);
                                                                  }
                                                                  §§goto(addr776);
                                                               }
                                                               §§goto(addr1196);
                                                            }
                                                            §§goto(addr793);
                                                         }
                                                         §§goto(addr1621);
                                                      }
                                                      §§goto(addr1554);
                                                   }
                                                   §§goto(addr1026);
                                                }
                                                §§goto(addr1423);
                                             }
                                             §§goto(addr1074);
                                          }
                                          §§goto(addr1218);
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr1744);
                              }
                              §§goto(addr1719);
                           }
                        }
                        §§goto(addr1701);
                     }
                     §§goto(addr1698);
                  }
                  §§goto(addr1744);
               }
               §§goto(addr1701);
            }
            §§goto(addr1670);
         }
         §§goto(addr1658);
      }
      
      public function §<"0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               §§goto(addr94);
            }
            else
            {
               §§push(this.§[S§);
               if(!(_loc2_ && param1))
               {
                  §§push("Container_Board_Selection");
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop().getItemByName(§§pop()));
                     if(_loc3_ || param1)
                     {
                        §§pop().mClip.alpha = 0.4;
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     addr90:
                     §§push(§§pop().getItemByName(§§pop()));
                  }
                  §§pop().mClip.alpha = 1;
                  §§goto(addr94);
               }
               else
               {
                  addr89:
                  §§push("Container_Board_Selection");
               }
               §§goto(addr90);
            }
         }
         addr94:
         if(_loc3_ || param1)
         {
            §§push(this.§[S§);
         }
      }
      
      private function §5!F§(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1++;
            loop0:
            while(true)
            {
               §§push(param1);
               do
               {
                  if(§§pop() > HighscoreSidebar.§#;§.length - 1)
                  {
                     if(_loc2_ && _loc3_)
                     {
                        continue loop0;
                     }
                     §§push(0);
                  }
                  else
                  {
                     addr25:
                     do
                     {
                        §§push(param1);
                     }
                     while(!(_loc3_ || this));
                     
                     continue;
                     addr25:
                  }
                  addr64:
                  while(true)
                  {
                     param1 = §§pop();
                     continue loop0;
                     §§goto(addr25);
                  }
               }
               while(_loc2_);
               
               return §§pop();
            }
         }
         while(true)
         {
            §§goto(addr25);
         }
      }
      
      private function §7!&§(param1:int) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() - 1);
               addr95:
               while(true)
               {
                  param1 = §§pop();
                  addr96:
                  while(true)
                  {
                     §§push(param1);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §+!`§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ 0§);
            loop0:
            while(true)
            {
               §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
               addr130:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(this.§ 0§);
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2;
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      private function §0!§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§ 0§);
            loop0:
            while(true)
            {
               §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3;
                     }
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§ 0§);
                           if(!(_loc1_ && this))
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 while(_loc2_)
                                 {
                                    §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
                                 }
                                 continue loop0;
                                 addr78:
                              }
                              §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
                              if(!_loc1_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(_loc1_)
                                 {
                                    addr65:
                                    if(!(_loc2_ || this))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 addr89:
                                 addr89:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              this.§ 0§ = HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1;
                              §§goto(addr89);
                           }
                        }
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(this.§ 0§);
                  }
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §^D§(param1:§"!g§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc10_)
         {
            §§push(Boolean(param1));
            if(_loc11_)
            {
               if(§§pop())
               {
                  if(_loc11_ || this)
                  {
                     §§pop();
                     addr60:
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push(Boolean(§@!^§.§2j§));
                     }
                     _loc4_ = param1.§-W§;
                     loop0:
                     while(true)
                     {
                        _loc3_++;
                        loop1:
                        while(true)
                        {
                           param1.§case §();
                           loop2:
                           while(true)
                           {
                              §§push(param1.§-s§);
                              loop3:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc11_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!(_loc10_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          addr111:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr112:
                                             while(!_loc10_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   addr277:
                                                   while(true)
                                                   {
                                                      §§push(§0!I§);
                                                      addr278:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc6_);
                                                            if(!(_loc11_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr109:
                                    }
                                    addr280:
                                    if(_loc2_ != false)
                                    {
                                       §§goto(addr282);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr277);
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(§§pop())
            {
               §§goto(addr60);
            }
            addr282:
            return;
         }
         §§goto(addr60);
      }
      
      public function §-§(param1:String, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:* = §#;§;
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
                  if(!(_loc9_ || param1))
                  {
                     break;
                  }
                  §§push(§§pop() == param1);
                  if(_loc9_ || param2)
                  {
                     if(§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           addr128:
                           loop9:
                           while(true)
                           {
                              §§push(§@!^§.§5u§(param1));
                              if(_loc9_)
                              {
                                 if(!(_loc9_ || param2))
                                 {
                                    continue loop10;
                                 }
                                 addr79:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    break loop9;
                                    §§goto(addr79);
                                 }
                              }
                              break;
                           }
                           while(§§pop())
                           {
                              if(!(_loc8_ && param2))
                              {
                                 if(_loc8_ && param2)
                                 {
                                    continue loop2;
                                 }
                                 this.§@@§ = param1;
                              }
                              loop5:
                              while(_loc9_ || param1)
                              {
                                 this.§ !9§(param1);
                                 loop6:
                                 while(true)
                                 {
                                    addr48:
                                    while(true)
                                    {
                                       this.§0"0§ = (§ !g§.§;!'§ as §`Y§).§]]§.§ !o§(param1);
                                       while(!_loc8_)
                                       {
                                          this.§6!,§();
                                          if(_loc9_ || _loc3_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr128);
                           }
                           continue loop0;
                        }
                        addr127:
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr127);
               }
            }
         }
         if(_loc9_)
         {
            if(this.§']§ == §9"§)
            {
               if(!_loc8_)
               {
                  this.§%"H§();
                  if(_loc8_)
                  {
                  }
                  addr171:
                  _loc5_ = this.§[S§.getItemByName("Highscore_Holder").mClip;
                  addr169:
                  if(!_loc9_)
                  {
                  }
                  while(_loc5_.numChildren > 0)
                  {
                     _loc5_.removeChildAt(0);
                     if(_loc8_)
                     {
                        break;
                     }
                  }
                  var _loc4_:§"!g§;
                  if((_loc4_ = this.§?b§(param1)) == null)
                  {
                     if(!_loc8_)
                     {
                        return;
                     }
                     loop22:
                     while(true)
                     {
                        §§push(this.§[S§);
                        if(_loc9_)
                        {
                           §§pop().setObjectToFront(this.§[S§.getItemByName("Container_Highscores"));
                           loop12:
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    this.§ n§(param1);
                                    continue;
                                 }
                                 addr328:
                                 while(true)
                                 {
                                    if(!_loc4_.§-W§)
                                    {
                                       break loop12;
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr332:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                this.§^D§(_loc4_);
                                                addr336:
                                                loop15:
                                                while(true)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(_loc8_ && this)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      this.§;"&§(true);
                                                      while(_loc8_ && this)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§%"H§();
                                                            continue loop18;
                                                         }
                                                      }
                                                      §§push(this.§[S§);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§pop().getItemByName("MovieClip_LoadingHiScores").setVisibility(false);
                                                         addr270:
                                                         while(true)
                                                         {
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr284);
                                                            continue loop23;
                                                         }
                                                      }
                                                      addr284:
                                                   }
                                                }
                                             }
                                             addr333:
                                          }
                                          while(true)
                                          {
                                             this.§%!i§(_loc4_.§-W§,_loc4_.§-s§);
                                             §§goto(addr312);
                                             §§goto(addr336);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr333);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr266);
                     }
                  }
                  else
                  {
                     §§push(_loc4_.§;!Q§);
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr328);
                        }
                        else
                        {
                           _loc4_.addEventListener(§?3§.§]!f§,this.§5"9§);
                           if(_loc9_)
                           {
                              if(!(_loc9_ || param1))
                              {
                                 §§goto(addr270);
                              }
                              addr208:
                              return;
                           }
                        }
                        §§goto(addr235);
                     }
                  }
                  §§goto(addr332);
               }
            }
            §§push(this.§[S§);
            if(_loc9_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr169);
            }
         }
         §§goto(addr171);
      }
      
      private function § n§(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §5"9§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§"!g§ = param1.currentTarget as §"!g§;
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.removeEventListener(§?3§.§]!f§,this.§5"9§);
            if(_loc5_ || this)
            {
               this.§@@§ = _loc2_.levelId;
            }
         }
         §§push(this.§@@§);
         if(_loc5_ || this)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§ n§(_loc3_);
            while(true)
            {
               this.§^D§(_loc2_);
            }
            addr165:
         }
         loop1:
         while(true)
         {
            this.§%!i§(_loc2_.§-W§,_loc2_.§-s§);
            loop2:
            while(true)
            {
               this.§%"H§();
               addr136:
               while(!_loc4_)
               {
                  this.§@!9§();
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      private function §%"H§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Object = §@!^§.§2j§;
         if(!(_loc5_ && _loc3_))
         {
            if(_loc1_.name)
            {
               if(_loc6_ || _loc1_)
               {
                  (this.§[S§.getItemByName("TextField_MyScoreName") as §&!>§).§ !'§.text = _loc1_.name + ": " + this.§0"0§;
                  if(_loc6_ || _loc1_)
                  {
                  }
               }
               §§goto(addr67);
            }
            if(this.§']§ == §>!@§)
            {
               §§goto(addr67);
            }
            else
            {
               §§push(this.§']§);
               if(_loc6_ || this)
               {
                  §§push(§9"§);
                  loop0:
                  for(; §§pop() == §§pop(); if(!(_loc6_ || _loc1_))
                  {
                     continue;
                  },if(§§pop() != §§pop())
                  {
                     §§goto(addr194);
                  },if(_loc6_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        this.§0"0§ = §@!^§.§2j§.episodeScore2;
                        §§goto(addr263);
                     }
                     else
                     {
                        §§goto(addr296);
                     }
                  },§§goto(addr263))
                  {
                     if(_loc6_)
                     {
                        §§push(this.§ 0§);
                        loop1:
                        while(true)
                        {
                           §§push(TOP_OVERALL_SCORES_EPISODE_1);
                           loop2:
                           while(§§pop() != §§pop())
                           {
                              §§push(this.§ 0§);
                              while(true)
                              {
                                 §§push(TOP_OVERALL_SCORES_EPISODE_2);
                                 addr239:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 addr194:
                                 §§goto(addr301);
                                 §§push(this.§ 0§);
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(TOP_OVERALL_SCORES_EPISODE_3);
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr215:
                                       if(!_loc5_)
                                       {
                                          this.§0"0§ = §@!^§.§2j§.episodeScore3;
                                          addr222:
                                          if(_loc6_)
                                          {
                                             this.§6!,§();
                                             if(_loc6_)
                                             {
                                                if(_loc5_ && _loc3_)
                                                {
                                                   §§goto(addr215);
                                                }
                                                break loop0;
                                             }
                                             §§goto(addr222);
                                          }
                                          addr228:
                                          if(_loc5_)
                                          {
                                             this.§6!,§();
                                             addr263:
                                             §§goto(addr228);
                                             addr263:
                                          }
                                          if(_loc6_)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr301);
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr239);
                                 §§goto(addr301);
                              }
                           }
                           §§goto(addr296);
                        }
                        addr294:
                     }
                     §§goto(addr296);
                  }
                  §§goto(addr67);
               }
               §§goto(addr294);
            }
         }
         addr67:
         var _loc3_:int = 0;
         var _loc4_:* = §#;§;
         loop5:
         while(§§hasnext(_loc4_,_loc3_))
         {
            §§push(§§nextvalue(_loc3_,_loc4_));
            while(true)
            {
               _loc2_ = §§pop();
               loop7:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  §§push(§§pop() == this.§@@§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        loop15:
                        while(true)
                        {
                           §§pop();
                           addr158:
                           loop14:
                           while(true)
                           {
                              §§push(§@!^§.§5u§(_loc2_));
                              if(_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop15;
                                 }
                                 addr116:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    break loop14;
                                    §§goto(addr116);
                                 }
                              }
                              break;
                           }
                           while(§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 this.§ !9§(this.§@@§);
                                 loop11:
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       this.§0"0§ = (§ !g§.§;!'§ as §`Y§).§]]§.§ !o§(this.§@@§);
                                       while(!_loc5_)
                                       {
                                          this.§6!,§();
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop12;
                                             }
                                             continue loop11;
                                          }
                                       }
                                       continue loop10;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr158);
                              }
                           }
                           continue loop5;
                        }
                        addr157:
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr157);
               }
            }
         }
         if(_loc5_)
         {
            addr296:
            this.§0"0§ = §@!^§.§2j§.episodeScore1;
            this.§6!,§();
            addr301:
            addr267:
         }
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,a§(param1);
         }
      }
      
      private function §@!9§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§'!V§ = 0;
            do
            {
               this.§"">§ = param1;
               do
               {
                  this.§="&§ = 0;
               }
               while(_loc3_ && param1);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §,a§(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§[S§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§[S§.getItemByName("TextField_MyScoreName").mClip;
         if(!_loc8_)
         {
            if(this.§"">§)
            {
               if(!(_loc8_ && _loc3_))
               {
                  if(this.§["'§)
                  {
                     if(_loc7_ || _loc3_)
                     {
                        addr55:
                        this.§["'§.filters = [new GlowFilter(16777215,1,32,8,this.§="&§,5,false,false)];
                        addr70:
                        var _loc5_:* = 0;
                        var _loc6_:* = this.§^2§;
                        loop8:
                        while(true)
                        {
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(_loc7_)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 if(_loc7_ || this)
                                 {
                                    this.§["'§.filters.push(_loc4_);
                                 }
                                 continue;
                              }
                              if(_loc7_ || this)
                              {
                                 if(_loc7_)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       addr117:
                                       if(int((this.§[S§.getItemByName("TextField_MyScoreNumber") as §&!>§).§ !'§.text) > 0)
                                       {
                                          if(_loc7_)
                                          {
                                             _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§="&§,3,false,false)];
                                             if(_loc7_ || _loc2_)
                                             {
                                                _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§="&§,3,false,false)];
                                                if(_loc7_)
                                                {
                                                   addr169:
                                                   §§push(0);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         _loc6_ = this.§^2§;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                            break loop8;
                                                         }
                                                         addr206:
                                                         if(!_loc8_)
                                                         {
                                                            addr324:
                                                            §§push(this.§'!V§);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(3);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        this.§="&§ = 0;
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           this.§'!V§ = 0;
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              this.§["'§ = null;
                                                                              if(!_loc8_)
                                                                              {
                                                                                 this.§"">§ = false;
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    addr251:
                                                                                    addr261:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§'!V§);
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(_loc8_ && _loc3_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(§§pop() % §§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§="&§);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§push(§§pop() / 200);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§="&§ = §§pop();
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         §§push(this.§="&§);
                                                                                                         if(_loc7_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop() > 5.5)
                                                                                                            {
                                                                                                               if(_loc7_ || _loc3_)
                                                                                                               {
                                                                                                                  this.§="&§ = 5.5;
                                                                                                                  if(_loc8_ && param1)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr452:
                                                                                                                  return;
                                                                                                                  addr373:
                                                                                                                  addr493:
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push((_loc5_ = this).§'!V§);
                                                                                                               if(!(_loc8_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                               }
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  _loc5_.§'!V§ = _loc6_;
                                                                                                               }
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr373);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr409:
                                                                                                                  this.§="&§ = 0;
                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                  {
                                                                                                                     break loop5;
                                                                                                                  }
                                                                                                                  addr492:
                                                                                                                  loop1:
                                                                                                                  while(this.§["'§)
                                                                                                                  {
                                                                                                                     if(_loc7_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        this.§["'§.filters = this.§^2§;
                                                                                                                     }
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        break loop6;
                                                                                                                     }
                                                                                                                     addr498:
                                                                                                                     addr498:
                                                                                                                     addr498:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_.filters = this.§^2§;
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr400:
                                                                                                            if(§§pop() < 0)
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr493);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr452);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§="&§);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() / 200);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                §§pop().§="&§ = §§pop();
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr400);
                                                                                                   §§push(this.§="&§);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr498);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                 }
                                                                                 addr311:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr451:
                                                                           §§goto(addr452);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§push((_loc5_ = this).§'!V§);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               _loc6_ = §§pop();
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  _loc5_.§'!V§ = _loc6_;
                                                               }
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§goto(addr451);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr476);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr409);
                                                         addr205:
                                                         addr203:
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr452);
                                             }
                                             §§goto(addr498);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr205);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              if(!_loc8_)
                              {
                                 _loc2_.filters.push(_loc4_);
                                 if(_loc7_)
                                 {
                                    _loc3_.filters.push(_loc4_);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr206);
                        }
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr117);
               }
               §§goto(addr70);
            }
            else
            {
               _loc2_.filters = this.§^2§;
            }
            §§goto(addr498);
         }
         §§goto(addr55);
      }
      
      private function §%!i§(param1:Array, param2:int) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:* = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Object = null;
         var _loc3_:* = false;
         if(_loc13_ || param1)
         {
            this.§%-§ = param1;
            if(!(_loc12_ && param2))
            {
               if(!this.§[S§)
               {
                  if(!_loc13_)
                  {
                     addr50:
                     var _loc4_:Class = § !h§.§["3§("Component_HighscoreEntry");
                     var _loc5_:MovieClip = this.§[S§.getItemByName("Highscore_Holder").mClip;
                     do
                     {
                        if(_loc5_.numChildren > 0)
                        {
                           continue;
                        }
                        if(!_loc12_)
                        {
                           break;
                        }
                        var _loc6_:* = 0;
                        var _loc7_:int = 0;
                        if(!(_loc12_ && _loc3_))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc7_);
                              loop2:
                              while(true)
                              {
                                 §§push(§0!I§);
                                 while(§§pop() < §§pop())
                                 {
                                    §§push(_loc7_);
                                    if(_loc13_)
                                    {
                                       §§push(param2);
                                       if(!_loc13_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() - 1);
                                       if(_loc13_ || param1)
                                       {
                                          §§push(§§pop() * §0!I§);
                                       }
                                       §§push(int(§§pop() + §§pop()));
                                       if(_loc12_ && _loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    _loc8_ = §§pop();
                                    if(!(_loc13_ || param1))
                                    {
                                       break;
                                    }
                                    try
                                    {
                                       while(true)
                                       {
                                          _loc10_ = param1[_loc8_];
                                       }
                                       addr129:
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    (_loc9_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
                                    if(_loc13_)
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc9_.TextField_Name.text = "-";
                                          while(true)
                                          {
                                             if(_loc13_)
                                             {
                                                if(_loc13_ || _loc3_)
                                                {
                                                   _loc9_.TextField_Points.text = "";
                                                   loop6:
                                                   for(; _loc13_; loop8:
                                                   while(true)
                                                   {
                                                      if(_loc13_ || param2)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  §§push(int(§§pop() + 19));
                                                               }
                                                               _loc6_ = §§pop();
                                                               loop9:
                                                               while(_loc13_ || param1)
                                                               {
                                                                  do
                                                                  {
                                                                     _loc5_.addChild(_loc9_);
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(_loc13_ || param2)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 _loc7_++;
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr169);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§@!^§.§2j§));
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr378:
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr379:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc10_.isPlayer));
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                                addr378:
                                                                                             }
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                addr357:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         addr359:
                                                                                                         loop17:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr360:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr358:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc12_ && param2)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr378);
                                                                                                      addr343:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc9_.TextField_Name.text = _loc10_.nickName;
                                                                                                      addr338:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc9_.TextField_Points.text = _loc10_.score;
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      §§goto(addr351);
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr363:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc9_.TextField_Rank.textColor = §!"E§;
                                                                        §§goto(addr322);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(false);
                                                                  
                                                                  continue loop1;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         break;
                                                      }
                                                      continue loop6;
                                                   },while(true)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc13_ || this)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(!(_loc12_ && param2))
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr351);
                                                   },if(§§pop())
                                                   {
                                                      §§goto(addr318);
                                                   },§§goto(addr254))
                                                   {
                                                      if(_loc12_ && param2)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               continue;
                                                            }
                                                            _loc9_.TextField_Points.textColor = §!"E§;
                                                            loop24:
                                                            while(true)
                                                            {
                                                               this.§["'§ = _loc9_;
                                                               addr275:
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr218:
                                                                     while(true)
                                                                     {
                                                                        _loc9_.y = _loc6_;
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr338);
                                             }
                                             §§goto(addr275);
                                          }
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr318);
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr129);
                     }
                     while(_loc5_.removeChildAt(0), !(_loc12_ && param2));
                     
                     this.§["'§ = null;
                     §§goto(addr83);
                  }
               }
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function § !9§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = HighscoreSidebar.§#;§;
         loop0:
         for(; §§hasnext(_loc5_,_loc4_); if(true)
         {
            continue;
         },§§goto(addr49))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  addr49:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        continue loop1;
                     }
                     if(§§pop() == param1)
                     {
                        if(!(_loc7_ && param1))
                        {
                           this.§@!-§ = _loc2_;
                        }
                        loop4:
                        while(!(_loc7_ && _loc2_))
                        {
                           while(true)
                           {
                              _loc2_++;
                              if(_loc6_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     §§goto(addr28);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §,^§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§"!g§ = null;
         loop0:
         for each(_loc4_ in this.§]"<§)
         {
            if(_loc4_.levelId != param1)
            {
               continue;
            }
            if(!(_loc8_ && param3))
            {
               §§push(_loc4_.§3!l§(param2));
               if(_loc7_ || this)
               {
                  if(§§pop() == false)
                  {
                     if(!_loc8_)
                     {
                        §§push(param3);
                        if(!_loc8_)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc7_ || param2)
                           {
                              this.§;"&§(false);
                              if(!_loc8_)
                              {
                                 addr233:
                                 this.§[S§.getItemByName("MovieClip_LoadingHiScores").setVisibility(true);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§[S§);
                                    addr212:
                                    while(true)
                                    {
                                       §§push(this.§[S§);
                                       addr214:
                                       while(true)
                                       {
                                          §§push("MovieClip_LoadingHiScores");
                                          addr215:
                                          while(true)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             addr216:
                                             while(true)
                                             {
                                                §§pop().setObjectToFront(§§pop());
                                                addr217:
                                                while(true)
                                                {
                                                   this.§%!i§(_loc4_.§-W§,_loc4_.§-s§);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr193:
                                    while(true)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          this.§-§(_loc4_.levelId,false);
                                          addr200:
                                          break loop0;
                                          addr200:
                                          addr189:
                                       }
                                       continue loop6;
                                    }
                                 }
                                 addr234:
                              }
                              while(true)
                              {
                                 this.§%"H§();
                                 §§goto(addr193);
                              }
                              §§goto(addr200);
                              addr208:
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§[S§);
                                 loop2:
                                 while(!_loc8_)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       §§push("MovieClip_LoadingHiScores");
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(_loc7_)
                                          {
                                             §§push(true);
                                             if(_loc7_ || param3)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                loop3:
                                                while(_loc7_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§[S§);
                                                      if(_loc8_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(this.§[S§);
                                                      if(_loc7_ || param3)
                                                      {
                                                         §§push("MovieClip_LoadingHiScores");
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            if(!_loc8_)
                                                            {
                                                               §§pop().setObjectToFront(§§pop());
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr217);
                                             }
                                             else
                                             {
                                                §§goto(addr233);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr233);
                                          }
                                       }
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr212);
                              }
                              addr182:
                           }
                           §§goto(addr233);
                        }
                        else
                        {
                           addr178:
                           if(!§§pop())
                           {
                              continue;
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr200);
                  }
                  else
                  {
                     §§push(param3);
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr182);
         }
      }
      
      public function §!!I§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§"!g§ = null;
         for each(_loc1_ in this.§]"<§)
         {
            if(_loc4_)
            {
               _loc1_.§;B§();
            }
         }
      }
      
      public function deActivate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ ",§ = null;
         if(!_loc2_)
         {
            this.§;"&§(false);
            if(!_loc2_)
            {
               addr27:
               §§push(this.§[S§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     addr44:
                     _loc1_ = this.§[S§.getItemByName("HighscoreSidebar") as § ",§;
                     if(_loc3_ || _loc3_)
                     {
                        this.§[S§.clear();
                        if(_loc3_)
                        {
                           this.§[S§ = null;
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr44);
         }
         §§goto(addr27);
      }
      
      public function §@p§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[2] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               if(!(_loc4_ || this))
               {
                  break;
               }
               §§pop().§§slot[1] = param1;
               loop2:
               while(true)
               {
                  while(true)
                  {
                     this.§9I§ = value;
                     do
                     {
                        §<!O§.§!p§(this.§9I§);
                     }
                     while(!_loc4_);
                     
                     if(!(_loc5_ && this))
                     {
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              §§pop().§§slot[2] = §";§.getLocal(§`Y§.§^"'§);
                              if(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc4_)
                                    {
                                       §§pop().data.useSounds = value;
                                       §§goto(addr108);
                                    }
                                    §§pop().flush();
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr106);
                        }
                        catch(e:Error)
                        {
                        }
                     }
                     continue loop2;
                     addr108:
                     if(!(_loc5_ && _loc2_))
                     {
                        addr106:
                        §§push(mySO);
                     }
                     return;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §<!c§() : Boolean
      {
         return this.§9I§;
      }
      
      public function get currentPage() : int
      {
         return this.§@!-§;
      }
      
      public function §39§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,^§(HighscoreSidebar.§#;§[this.currentPage]);
         }
      }
      
      public function set container(param1:§ ",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[S§ = param1;
         }
      }
      
      public function get container() : § ",§
      {
         return this.§[S§;
      }
      
      public function get §^!d§() : String
      {
         return this.§@@§;
      }
      
      public function get §[!X§() : String
      {
         return this.§']§;
      }
      
      public function set §^!d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@@§ = param1;
         }
      }
      
      public function §?7§(param1:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = "";
         var _loc3_:int = int(param1.charAt(0)) - 1;
         var _loc4_:int;
         §§push(_loc4_ = int(param1.substring(2)));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop() + §!]§ * _loc3_));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(HighscoreSidebar.§ true§[int(_loc5_) - 1]);
            if(!_loc6_)
            {
               _loc2_ = §§pop();
               addr82:
               return _loc2_;
            }
         }
         §§goto(addr82);
      }
      
      private function §;a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§@!^§.§2j§.§8B§)
            {
               this.§-!2§();
               if(_loc2_)
               {
                  if(!(_loc2_ || this))
                  {
                     loop0:
                     while(true)
                     {
                        this.§[S§.getItemByName("TextField_MyScoreName").setVisibility(true);
                        addr61:
                        while(_loc1_ && this)
                        {
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     addr53:
                  }
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr83);
         }
         §§goto(addr53);
      }
      
      private function §-!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[S§.getItemByName("TextField_MyScoreName").setVisibility(false);
         }
      }
      
      public function get §2" §() : Boolean
      {
         return this.§<!;§;
      }
      
      public function get §%_§() : Boolean
      {
         return this.§package§;
      }
      
      private function §6!,§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = null;
         if(_loc3_ || this)
         {
            §§push(§@!^§.§2j§);
            if(!_loc2_)
            {
               if(§§pop().name)
               {
                  loop0:
                  while(true)
                  {
                     §§push(§@!^§.§2j§);
                     addr75:
                     addr66:
                     while(true)
                     {
                        §§push(§§pop().name + ":  ");
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + this.§0"0§);
                        }
                        _loc1_ = §§pop();
                        do
                        {
                           (this.§[S§.getItemByName("TextField_MyScoreName") as §&!>§).§ !'§.text = _loc1_;
                        }
                        while(_loc2_ && _loc1_);
                        
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr28);
                  }
               }
               addr28:
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr66);
      }
   }
}
