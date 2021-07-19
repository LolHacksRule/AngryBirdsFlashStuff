package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §3§.§<#A§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class § #4§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndEagleState";
      
      private static const §0,§:String = "ScoreLoopCountChannel";
      
      private static const §`">§:Number = 30;
      
      protected static const §>K§:String = "highscore";
      
      protected static const §-!1§:String = "score";
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 30;
      
      protected static const §,#9§:int = 95;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && § #4§))
         {
            §^!7§ = "LevelEndEagleState";
            while(true)
            {
               §0,§ = "ScoreLoopCountChannel";
               while(_loc1_ || § #4§)
               {
                  §`">§ = 30;
                  loop2:
                  for(; !_loc2_; if(_loc1_ || _loc1_)
                  {
                     return;
                  })
                  {
                     while(true)
                     {
                        §>K§ = "highscore";
                        loop4:
                        while(true)
                        {
                           §-!1§ = "score";
                           loop5:
                           while(true)
                           {
                              §<!K§ = 40;
                              while(_loc1_)
                              {
                                 §5"n§ = 30;
                                 while(!_loc2_)
                                 {
                                    continue loop5;
                                    §,#9§ = 95;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected var §<!L§:Boolean;
      
      protected var §0!r§:§<#A§;
      
      protected var §%"O§:§[#R§;
      
      protected var §8S§:§[#R§;
      
      protected var §@1§:Number;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      public var mEagleScoreCounter:Number;
      
      protected var §>4§:int;
      
      protected var §^c§:§ #^§;
      
      protected var §?;§:MovieClip;
      
      protected var §=#F§:TextField;
      
      protected var §"!'§:MovieClip;
      
      protected var §">§:§8!R§;
      
      protected var §49§:MovieClip;
      
      protected var §3#+§:MovieClip;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!^§:Boolean;
      
      protected var §9!#§:§ #^§;
      
      public function § #4§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            this.§">§ = §4#;§.singleton.dataModel.userProgress;
            loop1:
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop2:
               while(true)
               {
                  §@;§.init(§&$§.§@8§.Views.View_LevelEndFalcon[0]);
                  while(true)
                  {
                     this.§^c§ = § #^§(§@;§.getItemByName("Container_Content"));
                     loop4:
                     for(; _loc2_; if(_loc2_ || this)
                     {
                        continue loop0;
                     })
                     {
                        this.§?;§ = MovieClip(§@;§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
                        loop5:
                        while(true)
                        {
                           this.§=#F§ = TextField(§@;§.getItemByName("TextField_EaglePercentage").mClip.text);
                           loop6:
                           while(true)
                           {
                              this.§"!'§ = §@;§.getItemByName("MovieClip_EagleBadge").mClip;
                              loop7:
                              while(_loc2_)
                              {
                                 this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
                                 loop8:
                                 while(true)
                                 {
                                    this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
                                    loop9:
                                    while(_loc2_)
                                    {
                                       this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
                                       loop10:
                                       while(!_loc1_)
                                       {
                                          this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
                                          while(_loc2_)
                                          {
                                             this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
                                             continue loop10;
                                             loop12:
                                             while(_loc2_ || this)
                                             {
                                                this.§49§ = this.§^c§.mClip.falconGlow;
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop2;
                                                while(true)
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop8;
                                             }
                                             if(!(_loc1_ && this))
                                             {
                                                continue loop4;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc1_ && this))
            {
               return;
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            while(true)
            {
               this.§"!'§.gotoAndStop(1);
            }
            addr121:
         }
         loop1:
         while(true)
         {
            this.§"!'§.visible = false;
            loop2:
            while(true)
            {
               this.§49§.gotoAndStop(1);
               loop3:
               while(true)
               {
                  this.§49§.visible = false;
                  loop4:
                  while(!_loc2_)
                  {
                     this.§9!^§ = false;
                     while(true)
                     {
                        if(!§+!b§.isCutSceneNext())
                        {
                           this.§#N§();
                           loop6:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 this.setScoreData();
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 addr76:
                              }
                              continue loop1;
                           }
                           continue loop4;
                        }
                        while(_loc3_)
                        {
                           this.§[r§();
                           continue loop1;
                        }
                     }
                  }
                  continue loop2;
               }
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§,!q§.§>k§.getEagleScore());
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.§>4§ = this.§">§.getEagleScoreForLevel(§+!b§.currentLevel);
            loop0:
            while(true)
            {
               this.§<!L§ = _loc1_ > this.§>4§;
               loop1:
               while(true)
               {
                  if(!this.§<!L§)
                  {
                     this.§3#+§.gotoAndStop(§-!1§);
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           this.§=#F§.text = _loc1_ + "%";
                           loop4:
                           while(true)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.§?;§.scaleX = 0;
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §?!r§.§"#_§("misc_score_1",§0,§,100);
                                       while(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop4;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             return;
                                          }
                                       }
                                       addr171:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue;
                                 addr140:
                              }
                           }
                           addr179:
                           while(true)
                           {
                              this.§3#+§.gotoAndStop(§>K§);
                              §§goto(addr171);
                           }
                        }
                     }
                     addr165:
                  }
                  while(true)
                  {
                     this.saveNewHighScore(_loc1_);
                     §§goto(addr179);
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      protected function §[r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§9!#§.setVisibility(true);
            while(true)
            {
               this.§^W§.setVisibility(true);
               loop1:
               while(true)
               {
                  this.§^"^§.setVisibility(true);
                  loop2:
                  while(true)
                  {
                     this.§,>§.setVisibility(false);
                     while(true)
                     {
                        this.§]6§.setVisibility(true);
                        loop4:
                        while(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 this.setButtonAlignment();
                                 if(!(_loc1_ && this))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                           return;
                        }
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr78);
      }
      
      protected function §#N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§^W§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§^"^§.setVisibility(true);
               loop1:
               while(true)
               {
                  this.§]6§.setVisibility(false);
                  loop2:
                  while(true)
                  {
                     if(§+!b§.getNextLevelId())
                     {
                        continue loop1;
                     }
                     §§push(this.§9!#§);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(false);
                        if(_loc2_ || this)
                        {
                           §§pop().setVisibility(§§pop());
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 this.setButtonAlignment();
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          break;
                                       }
                                       while(_loc2_)
                                       {
                                          §§push(this.§9!#§);
                                          while(true)
                                          {
                                             §§push(true);
                                             addr80:
                                             while(true)
                                             {
                                                §§pop().setVisibility(§§pop());
                                             }
                                          }
                                          this.§,>§.setVisibility(true);
                                       }
                                       continue loop2;
                                    }
                                    while(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr43);
                           }
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr79);
                  }
               }
            }
         }
         addr43:
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Boolean = this.§9!#§.visible;
         var _loc2_:Boolean = this.§^W§.visible;
         §§push(§,#9§);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc6_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(§5"n§);
                        if(!_loc5_)
                        {
                           §§push(§,#9§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || this)
                              {
                                 addr78:
                                 §§push(int(§§pop() + §§pop()));
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc6_)
                                    {
                                       addr90:
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          addr94:
                                          if(_loc1_)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr97:
                                                §§push(int(§5"n§ + (_loc6_ || _loc2_ ? §§pop() + §,#9§ : §§pop())));
                                                if(_loc6_ || this)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr121:
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr129:
                                                      §§push(-§§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            addr156:
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr154:
                                                               §§push(§§pop() + §<!K§);
                                                            }
                                                            var _loc4_:* = int(§§pop());
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(_loc2_);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        this.§^W§.x = _loc4_;
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§5"n§);
                                                                              addr284:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§,#9§);
                                                                                 addr285:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr286:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr287:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          addr288:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr289:
                                                                                             while(_loc6_ || _loc2_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr209:
                                                                              if(!(_loc6_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc1_))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             this.§9!#§.x = _loc4_;
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§5"n§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(§,#9§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr182:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr193:
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr195:
                                                                                                                        if(!(_loc5_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ || _loc1_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr209);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§5"n§);
                                                                                                                           addr253:
                                                                                                                           while(_loc6_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(§,#9§);
                                                                                                                              while(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       §§goto(addr182);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr286);
                                                                                                                              }
                                                                                                                              §§goto(addr285);
                                                                                                                           }
                                                                                                                           §§goto(addr284);
                                                                                                                           §§goto(addr195);
                                                                                                                        }
                                                                                                                        addr252:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                               §§goto(addr272);
                                                                                                            }
                                                                                                            §§goto(addr264);
                                                                                                         }
                                                                                                         §§goto(addr261);
                                                                                                      }
                                                                                                      §§goto(addr253);
                                                                                                   }
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                                addr280:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr252);
                                                                                                   continue loop20;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                    addr227:
                                                                                 }
                                                                                 addr165:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§^"^§.x = _loc4_;
                                                                     §§goto(addr280);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr306);
                                                         }
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr107);
                        }
                        else
                        {
                           addr77:
                           §§push(§§pop());
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr94);
            }
            §§goto(addr97);
         }
         §§goto(addr90);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
         }
         loop0:
         while(true)
         {
            this.§"#V§();
            loop1:
            while(true)
            {
               §?!r§.§9"4§(§0,§);
               loop2:
               while(true)
               {
                  this.mEagleScoreCounter = 0;
                  loop3:
                  for(; !_loc2_; if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  },if(!_loc1_)
                  {
                     continue loop1;
                  },§§goto(addr86))
                  {
                     §§push(this.§%"O§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(this.§8S§);
                           if(_loc1_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(_loc1_)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       §§push(this.§8S§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          do
                                          {
                                             this.§8S§ = null;
                                          }
                                          while(_loc2_);
                                          
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       this.§%"O§ = null;
                                       break loop6;
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                              return;
                           }
                           §§goto(addr69);
                           addr86:
                        }
                        continue;
                     }
                     addr102:
                     while(true)
                     {
                        §§pop().stop();
                     }
                     §§goto(addr103);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§">§.§]"D§(§+!b§.currentLevel,param1);
         }
      }
      
      protected function §[!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3#S§ = 0;
         }
         do
         {
            this.§"#Q§ = 0;
            do
            {
               this.§@1§ = §`">§;
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §+#V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§^c§);
            loop0:
            while(true)
            {
               §§push(this.§^c§);
               addr255:
               while(true)
               {
                  §§push(§§pop().x - this.§3#S§);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§^c§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§^c§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().y - this.§"#Q§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 if(this.§@1§ <= 0)
                                 {
                                    this.§3#S§ = 0;
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             this.§"#Q§ = 0;
                                             while(!_loc2_)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§@1§);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() / 10);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().§@1§ = §§pop();
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      return;
                                                   }
                                                   loop10:
                                                   for(; !(_loc2_ && param1); while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(Math.random() - 0.5);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§@1§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() / §`">§);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() * 20);
                                                         }
                                                      }
                                                      §§pop().§3#S§ = §§pop();
                                                      continue loop10;
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(Math.random() - 0.5);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            §§push(this.§@1§);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               §§push(§§pop() / §`">§);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr185:
                                                               §§push(§§pop() * 20);
                                                            }
                                                            §§pop().§"#Q§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  §§push(this.§^c§);
                                                                  loop12:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§push(this.§^c§);
                                                                     while(_loc3_ || param1)
                                                                     {
                                                                        §§pop().x = §§pop().x + this.§3#S§;
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^c§);
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                           addr115:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr188:
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr188);
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr201);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      protected function §+"N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!'§.visible = true;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(100);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        §§push(param1);
                        loop3:
                        while(true)
                        {
                           §§push(100);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1);
                                                loop13:
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(50);
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(!(_loc2_ || param1))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  addr162:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§"!'§.gotoAndStop(1);
                                                                        while(true)
                                                                        {
                                                                           addr76:
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              this.§8S§ = §-#C§.§%!E§.§^!H§(this.§"!'§,{
                                                                                 "scaleX":1,
                                                                                 "scaleY":1
                                                                              },{
                                                                                 "scaleX":7,
                                                                                 "scaleY":7
                                                                              },0.1);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(this.§8S§);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().onComplete = this.onBadgeLanded;
                                                                                          addr52:
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      addr263:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         break loop13;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_ && param1)
                                                                                                         {
                                                                                                            break loop21;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§"!'§.gotoAndStop(3);
                                                                                                            break loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      addr242:
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§"!'§.gotoAndStop(4);
                                                                                          break loop21;
                                                                                       }
                                                                                       addr268:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§"!'§.gotoAndStop(2);
                                                                                    }
                                                                                    addr164:
                                                                                 }
                                                                                 addr168:
                                                                                 while(_loc2_ || this)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!(_loc2_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop1;
                                                                                    §§goto(addr168);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr262:
                                                               }
                                                               §§goto(addr263);
                                                               addr155:
                                                               if(!(_loc2_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr239:
                                                      addr134:
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§push(0);
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop3;
                                                addr187:
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                    }
                                    §§goto(addr262);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr268);
                  }
               }
            }
         }
         §§goto(addr249);
      }
      
      protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§9!^§)
            {
               loop3:
               while(true)
               {
                  §?!r§.§"#_§("highscore");
                  loop4:
                  while(true)
                  {
                     this.§9!^§ = true;
                     addr55:
                     addr74:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                  }
               }
               addr78:
            }
            while(true)
            {
               this.§[!?§();
               while(_loc2_)
               {
                  this.§,"I§();
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               §§goto(addr55);
               §§goto(addr74);
            }
         }
         §§goto(addr78);
      }
      
      protected function §,"I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,this.§"!'§.x,this.§"!'§.y,§<#A§.§=[§);
         }
         do
         {
            this.§^c§.mClip.addChild(this.§0!r§);
         }
         while(!_loc1_);
         
      }
      
      private function §"#V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0!r§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     this.§0!r§ = null;
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     addr56:
                     addr56:
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop4;
                     }
                  }
                  return;
               }
               addr97:
               if(!_loc2_)
               {
                  if(!§@;§.contains(this.§0!r§))
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     addr91:
                     while(true)
                     {
                        this.§^c§.mClip.removeChild(this.§0!r§);
                     }
                     addr91:
                  }
               }
               §§goto(addr91);
               while(true)
               {
                  continue loop0;
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?!r§.§9"4§(§0,§);
            loop0:
            while(true)
            {
               if(this.mEagleScoreCounter == 100)
               {
                  loop1:
                  while(true)
                  {
                     this.§49§.gotoAndPlay(1);
                     loop2:
                     while(true)
                     {
                        this.§49§.visible = true;
                        loop3:
                        while(_loc1_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(this.§9!^§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §?!r§.§"#_§("highscore");
                                 }
                                 while(_loc1_ || _loc1_)
                                 {
                                    this.§9!^§ = true;
                                    while(_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop3;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr24);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§<!L§);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              this.§+"N§(this.mEagleScoreCounter);
                           }
                           addr46:
                        }
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr52);
                           }
                           §§goto(addr69);
                        }
                     }
                     break;
                  }
                  §§goto(addr75);
               }
               addr24:
               return;
            }
         }
         §§goto(addr46);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            this.§=#F§.text = int(this.mEagleScoreCounter) + "%";
            loop1:
            while(true)
            {
               this.§?;§.scaleX = this.mEagleScoreCounter / 100;
               loop2:
               for(; !_loc3_; if(!(_loc2_ || _loc3_))
               {
                  continue;
               },§§goto(addr52),§§push(this.§0!r§))
               {
                  if(this.§@1§ >= 0)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§+#V§(param1);
                     }
                     while(true)
                     {
                        addr77:
                        if(!(_loc3_ && param1))
                        {
                           §,!q§.§9!,§.clearLevel();
                           continue loop1;
                        }
                     }
                     addr110:
                  }
                  while(nextState.length > 0)
                  {
                     if(_loc3_ && this)
                     {
                        continue loop1;
                     }
                     §§goto(addr77);
                     §§goto(addr110);
                  }
                  while(true)
                  {
                     §§push(this.§0!r§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr36:
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr54:
                        }
                        return;
                     }
                     addr52:
                     addr52:
                     §§pop().update(param1);
                     §§goto(addr54);
                  }
               }
               continue loop0;
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc5_ && param3)
                  {
                     addr124:
                  }
               }
               else
               {
                  addr116:
                  §§push(1);
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr124);
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr116);
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr151:
                  switch(§§pop())
                  {
                     case 0:
                        §'$§();
                        if(!(_loc5_ && param3))
                        {
                           § g§(StateCutScene.§^!7§);
                           break;
                           addr57:
                        }
                        break;
                     case 1:
                        § g§(§<2§.§^!7§);
                        addr49:
                        if(_loc6_)
                        {
                           addr34:
                           break;
                        }
                        §§goto(addr57);
                        break;
                     case 2:
                        §?!r§.§0"#§();
                        while(true)
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr49);
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr151);
               if(_loc6_ || param3)
               {
               }
            }
            §§goto(addr151);
         }
         §§goto(addr116);
      }
   }
}
