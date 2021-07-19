package §^U§
{
   import §#";§.§0"#§;
   import §%!0§.§3"!§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<!1§.§&%§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §%"3§
   {
      
      public static const §%!Q§:String = "StatePlay";
      
      public static const §&5§:int = 50;
      
      protected static const §=0§:String = "MightyEagleButtonVisible";
      
      protected static const §!"&§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §^6§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!Q§ = "StatePlay";
            while(true)
            {
               §&5§ = 50;
               addr42:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr49:
            }
         }
         loop1:
         while(true)
         {
            §=0§ = "MightyEagleButtonVisible";
            loop2:
            while(true)
            {
               §!"&§ = "MightyEagleButtonPrepareHide";
               while(_loc2_)
               {
                  §^6§ = "MightyEagleButtonHide";
                  if(_loc2_)
                  {
                     continue loop2;
                  }
               }
               continue loop1;
            }
         }
         §§goto(addr49);
      }
      
      protected var §-"9§:§9!=§;
      
      protected var §2"4§:§=!r§;
      
      protected var §@!x§:String;
      
      protected var §9"%§:Boolean;
      
      private var §]!D§:Vector.<int>;
      
      private var §6'§:Boolean;
      
      private var §&!1§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-"9§ = new §9!=§();
            while(true)
            {
               this.§]!D§ = new Vector.<int>(32);
               loop1:
               for(; _loc4_ || _loc3_; while(true)
               {
                  if(_loc3_ && param2)
                  {
                     continue loop1;
                  }
                  this.§]!D§[8] = 5000;
                  §§goto(addr70);
               })
               {
                  super(param1,param2);
                  loop2:
                  while(true)
                  {
                     this.§]!D§[3] = 5000;
                     addr100:
                     while(true)
                     {
                        this.§]!D§[7] = 5000;
                        continue loop1;
                        addr46:
                        if(!(_loc3_ && this))
                        {
                           this.§]!D§[12] = 5000;
                           addr53:
                           if(!_loc3_)
                           {
                              return;
                              addr39:
                           }
                           while(true)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                                 addr70:
                              }
                              §§goto(addr46);
                              §§goto(addr53);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         while(true)
         {
            §`!v§ = new §>!V§(this);
            while(!(_loc1_ && _loc2_))
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_LevelPlay[0]);
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function § "<§() : void
      {
      }
      
      private function §[7§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§`!v§.getItemByName("TextField_METimer") as §!!]§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§4!!§();
         }
         do
         {
            super.levelStarted();
            loop1:
            do
            {
               if(§`!v§.getItemByName("Button_MightyEagle"))
               {
                  loop2:
                  while(true)
                  {
                     §`!v§.getItemByName("Button_MightyEagle").setVisibility(true);
                     loop3:
                     while(true)
                     {
                        addr72:
                        while(true)
                        {
                           §0"#§.§9"2§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
                           do
                           {
                              this.§2N§();
                           }
                           while(_loc2_ && _loc1_);
                           
                           if(!(_loc2_ && this))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr72);
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || this));
         
      }
      
      protected function §4!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0"#§.§4"#§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
         }
      }
      
      protected function §`!f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!v§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §`!v§.getItemByName("Container_MEScore").setVisibility(false);
               while(_loc2_)
               {
                  §`!v§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §`!v§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                        if(_loc2_)
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
         §§goto(addr53);
      }
      
      protected function §2N§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            this.§-"9§.§2">§(0);
            if(!(_loc6_ && this))
            {
               addr62:
               while(true)
               {
                  this.§^!`§(0);
                  if(_loc5_ || _loc2_)
                  {
                     this.§`!f§();
                     if(!_loc6_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        addr165:
                        if(§7!X§.§[p§ != null)
                        {
                           if(_loc5_ || _loc1_)
                           {
                              break;
                           }
                           do
                           {
                              this.§9"%§ = false;
                           }
                           while(_loc6_);
                           
                           return;
                           addr195:
                           addr191:
                        }
                        this.§@!x§ = §=0§;
                        if(_loc5_)
                        {
                           this.§2"4§ = null;
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr191);
                  }
                  break;
               }
            }
            _loc1_ = new Bitmap(§7!X§.§[p§,"auto",true);
            if(!_loc6_)
            {
               _loc1_.x = -_loc1_.width / 2;
               if(!_loc6_)
               {
                  addr103:
                  _loc1_.y = -_loc1_.height / 2;
               }
               _loc2_ = new MovieClip();
               if(!_loc6_)
               {
                  _loc2_.addChild(_loc1_);
                  if(_loc5_)
                  {
                     _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                     if(!_loc6_)
                     {
                        _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                        if(!_loc6_)
                        {
                           (§`!v§.getItemByName("MovieClip_AvatarPlaceholder") as §@u§).changeMovieClip(_loc2_);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr160:
                              §`!v§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                           }
                        }
                        §§goto(addr160);
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr160);
            }
            §§goto(addr103);
         }
         §§goto(addr62);
      }
      
      public function §@!T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
         loop0:
         while(true)
         {
            (§`!v§.getItemByName("Button_Pause") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop1:
            while(true)
            {
               this.§@!T§();
               while(true)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§2"4§);
                     if(_loc1_ || _loc1_)
                     {
                        if(§§pop() == null)
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr63:
                        §§pop().stop();
                     }
                     continue;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      protected function §;!+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && this))
         {
            if(!this.§6'§)
            {
               if(!(_loc5_ && this))
               {
                  addr218:
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                  }
                  addr219:
               }
               while(true)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr219);
               }
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(§§pop() >= this.§]!D§.length)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc1_);
                           addr161:
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() % 1000);
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
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
                                             §§push(int(_loc1_ / 1000) == 25);
                                             if(_loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc5_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                }
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§&!1§);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(int(getTimer()));
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(getTimer() - _loc3_);
                                                                           if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() >= 1000)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr48:
                                                                                 if(!(_loc5_ && _loc1_))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr141:
                                                                                    while(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       this.§6'§ = true;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr91:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        addr189:
                                                                        while(true)
                                                                        {
                                                                           _loc2_++;
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     addr188:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §&%§.§#W§(§&%§.§[!-§,§`!r§.§0B§);
                                                                  continue loop2;
                                                               }
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   return;
                                                   addr63:
                                                }
                                                §§goto(addr141);
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc1_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(int(§§pop() + this.§]!D§[_loc2_]));
                        }
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr218);
      }
      
      protected function § o§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §%!x§.getScore();
         §§push(this.§-"9§.getValue());
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_ < _loc1_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr101:
                     do
                     {
                        §§push(this.§6'§);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        addr68:
                     }
                     while(_loc4_);
                     
                  }
               }
               loop3:
               while(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§&!1§ = true;
                     }
                     addr79:
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop3;
                     }
                     §§goto(addr101);
                  }
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§3$§.isOpen);
            while(true)
            {
               if(§§pop())
               {
                  §§goto(addr72);
               }
               loop1:
               while(true)
               {
                  §§push(§'_§.§=M§.objects.mSardineCanAdded);
                  if(!(_loc4_ || _loc2_))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        (§`!v§.getItemByName("Container_MEScore") as §6W§).setVisibility(true);
                        addr68:
                        while(true)
                        {
                        }
                        addr30:
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        addr37:
                        if(!_loc3_)
                        {
                           if(!(_loc4_ || param1))
                           {
                              addr72:
                              return §'B§.STATE_STATUS_RUNNING;
                           }
                           if(false)
                           {
                              continue loop1;
                           }
                           §§push(super.run(param1));
                           if(!_loc3_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(!_loc3_)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 if(§§pop() == §'B§.STATE_STATUS_RUNNING)
                                 {
                                    addr252:
                                    this.§^!`§(param1);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr248:
                                       addr239:
                                       addr249:
                                       addr246:
                                       addr247:
                                       if(this.§@!x§ == §=0§ && !§'_§.§=M§.objects.isPigsAlive())
                                       {
                                          addr240:
                                          this.§ C§();
                                       }
                                       §§push(this.§@!x§);
                                       §§push(§=0§);
                                       if(_loc4_)
                                       {
                                          addr215:
                                          §§push(§§pop() == §§pop());
                                          if(!(§§pop() == §§pop()))
                                          {
                                             addr217:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§pop();
                                                   addr227:
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§@!x§);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§!"&§);
                                                               if(_loc4_)
                                                               {
                                                                  addr184:
                                                                  §§push(§§pop() == §§pop());
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr190:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 addr205:
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§'_§.§=M§);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().slingshot.mSlingShotState);
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() == §3"!§.§`!s§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr142);
                                                                                                   }
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                §§goto(addr215);
                                                                                             }
                                                                                             §§goto(addr184);
                                                                                          }
                                                                                          §§goto(addr190);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                                 §§goto(addr227);
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        addr142:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.§%]§();
                                                                                       §§goto(addr159);
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                           §§goto(addr159);
                                                                        }
                                                                        addr159:
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           §§goto(addr251);
                                                                        }
                                                                        return §'B§.STATE_STATUS_RUNNING;
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr240);
                                                }
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                                 §§push(_loc2_);
                              }
                              addr281:
                              return §§pop();
                           }
                           §§goto(addr250);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop1;
                           }
                           addr75:
                        }
                     }
                  }
                  while(true)
                  {
                     this.§;!+§();
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr30);
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function § C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!x§ = §!"&§;
         }
      }
      
      protected function §%]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentState(§>!D§.§&!j§);
            while(true)
            {
               (§`!v§.getItemByName("Button_MightyEagle") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            addr122:
         }
         loop1:
         while(true)
         {
            §§push(this.§2"4§);
            loop2:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§2"4§ = §7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_MightyEagle").mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.5);
                     addr93:
                     while(true)
                     {
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  this.§@!x§ = §^6§;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(this.§2"4§);
                        loop7:
                        while(true)
                        {
                           §§pop().onComplete = this.§%![§;
                           addr50:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop7;
                              }
                           }
                           continue loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr77);
                     }
                     §§goto(addr93);
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr122);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function §%![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2"4§ = §7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§2"4§.play();
               while(_loc1_)
               {
                  this.§@!x§ = §^6§;
                  if(!_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§'_§.§=M§.objects.mMightyEagleAdded)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr46:
                  §§push(§+"!§.§%!Q§);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return §7A§.§%!Q§;
               }
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr46);
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §9k§.§%!Q§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc4_)
            {
               §§push(82);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr73:
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     §`!;§.§%P§();
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     continue;
               }
            }
            §§goto(addr73);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(§'_§.§^q§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || this)
               {
                  §§push(49);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc3_ && _loc3_)
                           {
                              addr146:
                              if(§§pop() === _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr150:
                                    §§push(2);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr245:
                                       loop1:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             break;
                                          case 1:
                                             break;
                                          case 2:
                                             break;
                                          case 3:
                                          case 4:
                                             §`!;§.§%P§();
                                             if(_loc4_ || _loc3_)
                                             {
                                                mNextState = §`!;§.§%!Q§;
                                                addr48:
                                                break;
                                                addr59:
                                             }
                                             break;
                                          case 5:
                                             §`!;§.§;c§();
                                             while(true)
                                             {
                                                mNextState = §`!;§.§%!Q§;
                                                if(_loc3_ && _loc3_)
                                                {
                                                   break loop1;
                                                }
                                                if(_loc3_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(_loc4_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr59);
                                                }
                                                §§goto(addr48);
                                             }
                                             break;
                                          case 6:
                                       }
                                       return;
                                       addr158:
                                    }
                                    else
                                    {
                                       addr209:
                                       if(§§pop() === _loc2_)
                                       {
                                          if(_loc4_)
                                          {
                                             addr213:
                                             §§push(5);
                                             if(_loc4_)
                                             {
                                                addr216:
                                             }
                                             else
                                             {
                                                addr220:
                                                if(§§pop() !== _loc2_)
                                                {
                                                   §§goto(addr245);
                                                   §§push(7);
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                          addr222:
                                          §§push(6);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr240:
                                          }
                                       }
                                       else
                                       {
                                          §§push(55);
                                          if(_loc4_)
                                          {
                                             §§goto(addr220);
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                 }
                                 else
                                 {
                                    addr197:
                                    §§push(4);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr245);
                              }
                              else
                              {
                                 §§push(52);
                                 if(!(_loc3_ && this))
                                 {
                                    addr167:
                                    if(§§pop() === _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(3);
                                          if(_loc4_ || param1)
                                          {
                                             §§goto(addr245);
                                          }
                                          else
                                          {
                                             §§goto(addr216);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr213);
                                       }
                                       §§goto(addr216);
                                    }
                                    else
                                    {
                                       §§push(53);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr197);
                                             }
                                             §§goto(addr245);
                                          }
                                          else
                                          {
                                             §§push(54);
                                             if(_loc4_ || this)
                                             {
                                                §§goto(addr209);
                                             }
                                             §§goto(addr220);
                                          }
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr245);
                        }
                        §§goto(addr213);
                     }
                     else
                     {
                        §§push(50);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(_loc4_ || param1)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                              else
                              {
                                 §§goto(addr222);
                              }
                              §§goto(addr245);
                           }
                           else
                           {
                              §§push(51);
                              if(!_loc3_)
                              {
                                 §§goto(addr146);
                              }
                              §§goto(addr220);
                           }
                        }
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr167);
               }
               §§goto(addr150);
               addr63:
            }
            §§goto(addr245);
         }
         §§goto(addr63);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param3 is §9"8§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§0=§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        §§push(§0=§.LISTENER_EVENT_MOUSE_UP);
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              §8!W§.§^!R§();
                           }
                           if(!_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              var _loc4_:* = param2;
                              if(_loc6_ || param3)
                              {
                                 if("CLOSE_TUTORIAL" === _loc4_)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(0);
                                       if(_loc5_ && param2)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr184:
                                       §§push(2);
                                       if(!_loc6_)
                                       {
                                          addr218:
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                                 else if("PAUSE" === _loc4_)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       §§push(1);
                                       if(_loc6_ || param2)
                                       {
                                       }
                                       §§goto(addr223);
                                    }
                                    else
                                    {
                                       §§goto(addr184);
                                    }
                                 }
                                 else if("RESTART_LEVEL" === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr184);
                                    }
                                    else
                                    {
                                       §§goto(addr193);
                                    }
                                 }
                                 else
                                 {
                                    if("MIGHTY_EAGLE" === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          addr193:
                                          §§push(3);
                                          if(!_loc6_)
                                          {
                                          }
                                       }
                                    }
                                    else if("FULLSCREEN_BUTTON" !== _loc4_)
                                    {
                                       addr223:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §3$§.§4!W§();
                                             break;
                                             addr80:
                                          case 1:
                                             mNextState = this.§;!j§();
                                             addr72:
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr80);
                                             break;
                                          case 2:
                                             §`!;§.§%P§();
                                             loop3:
                                             while(true)
                                             {
                                                addr51:
                                                while(true)
                                                {
                                                   mNextState = §`!;§.§%!Q§;
                                                   continue loop3;
                                                }
                                             }
                                             break;
                                          case 3:
                                             break;
                                          case 4:
                                             AngryBirdsFP11.§@"7§.§>!5§();
                                             if(_loc6_ || param2)
                                             {
                                                if(_loc6_ || param3)
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr72);
                                                   }
                                                }
                                                §§goto(addr56);
                                             }
                                       }
                                       return;
                                       §§push(5);
                                    }
                                    §§goto(addr223);
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr218);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr184);
                           }
                           addr128:
                        }
                     }
                     addr126:
                     §8!W§.§for§();
                     §§goto(addr128);
                  }
               }
            }
            §§goto(addr75);
         }
         §§goto(addr126);
      }
      
      protected function §;!j§() : String
      {
         return §@!y§.§%!Q§;
      }
      
      protected function §7!_§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §'_§.§=M§.§7!_§();
         }
         §§push(AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§));
         if(_loc2_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §`!v§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         }
         do
         {
            this.§9"%§ = true;
            do
            {
               this.§%]§();
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      protected function §^!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ o§();
         }
      }
   }
}
