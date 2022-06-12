package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§'N§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §6o§.§="7§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2a§;
   import §<a§.§9U§;
   import §<a§.§>f§;
   import §]!A§.;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §8!W§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §7D§:int = 50;
      
      protected static const §8!N§:String = "MightyEagleButtonVisible";
      
      protected static const §7!S§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §;!s§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            STATE_NAME = "StatePlay";
            while(true)
            {
               §7D§ = 50;
            }
            addr90:
         }
         loop1:
         do
         {
            §8!N§ = "MightyEagleButtonVisible";
            while(!_loc1_)
            {
               §7!S§ = "MightyEagleButtonPrepareHide";
               do
               {
                  §;!s§ = "MightyEagleButtonHide";
               }
               while(!(_loc2_ || StatePlay));
               
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr90);
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected var §;![§:§9U§;
      
      protected var §0O§:§"m§;
      
      protected var §`!U§:String;
      
      protected var §1e§:Boolean;
      
      private var §1!p§:Vector.<int>;
      
      private var §<4§:Boolean;
      
      private var §73§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§;![§ = new §9U§();
         }
         loop0:
         while(true)
         {
            this.§1!p§ = new Vector.<int>(32);
            loop1:
            while(true)
            {
               super(param1,param2);
               loop2:
               while(true)
               {
                  this.§1!p§[3] = 5000;
                  loop3:
                  do
                  {
                     this.§1!p§[7] = 5000;
                     while(true)
                     {
                        this.§1!p§[8] = 5000;
                        loop5:
                        while(!(_loc3_ && param1))
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 this.§1!p§[9] = 5000;
                                 while(!_loc3_)
                                 {
                                    this.§1!p§[12] = 5000;
                                    if(!(_loc3_ && this))
                                    {
                                       if(!(_loc3_ && param2))
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(!(_loc4_ || param2));
                  
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §6w§.init(§ "A§.§4[§.Views.View_LevelPlay[0]);
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function §2m§() : void
      {
      }
      
      private function §]!f§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§6w§.getItemByName("TextField_METimer") as §-"E§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.stopSoundsOnLevelStart();
         }
         loop0:
         while(true)
         {
            super.levelStarted();
            loop1:
            while(true)
            {
               if(!§6w§.getItemByName("Button_MightyEagle"))
               {
                  while(true)
                  {
                     §§push(§>!E§);
                     §§push("LevelStartsBirdsMilitary");
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() + (1 + int(Math.random() * 2)));
                     }
                     §§pop().§7N§(§§pop());
                     do
                     {
                        this.initActivation();
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     if(!_loc1_)
                     {
                        addr41:
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  return;
               }
               addr59:
            }
         }
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>!E§.§&!^§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
         }
      }
      
      protected function §3!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6w§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §6w§.getItemByName("Container_MEScore").setVisibility(false);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §6w§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                     do
                     {
                        §6w§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                     }
                     while(_loc1_ && _loc1_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function initActivation() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc6_)
         {
            this.§;![§.assign(0);
            if(_loc6_ || _loc2_)
            {
               loop0:
               while(true)
               {
                  this.updateCurrentScore(0);
                  while(true)
                  {
                     this.§3!2§();
                     if(_loc6_)
                     {
                        if(!(_loc6_ || _loc1_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                        if(§#;§.§?r§ != null)
                        {
                           if(_loc6_)
                           {
                              _loc1_ = new Bitmap(§#;§.§?r§,"auto",true);
                              if(_loc6_)
                              {
                                 _loc1_.x = -_loc1_.width / 2;
                                 if(_loc6_)
                                 {
                                    _loc1_.y = -_loc1_.height / 2;
                                 }
                              }
                              _loc2_ = new MovieClip();
                              if(!(_loc5_ && _loc3_))
                              {
                                 _loc2_.addChild(_loc1_);
                                 if(!(_loc5_ && this))
                                 {
                                    _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                                    if(!(_loc5_ && this))
                                    {
                                       addr141:
                                       _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr157:
                                          (§6w§.getItemByName("MovieClip_AvatarPlaceholder") as §7"-§).changeMovieClip(_loc2_);
                                          if(_loc6_ || _loc2_)
                                          {
                                          }
                                          addr186:
                                          this.§`!U§ = §8!N§;
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             break;
                                          }
                                          do
                                          {
                                             this.§1e§ = false;
                                          }
                                          while(!_loc6_);
                                          
                                          return;
                                          addr211:
                                       }
                                       §6w§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                                       §§goto(addr186);
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr141);
                           }
                           break;
                        }
                        §§goto(addr157);
                     }
                     break;
                  }
                  this.§0O§ = null;
               }
            }
         }
         §§goto(addr211);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            while(true)
            {
               (§6w§.getItemByName("Button_Pause") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               loop1:
               while(_loc1_)
               {
                  this.deactivateMightyEagleButton();
                  do
                  {
                     if(!_loc2_)
                     {
                        §§push(this.§0O§);
                        if(_loc1_)
                        {
                           if(§§pop() == null)
                           {
                              §§goto(addr24);
                           }
                           while(true)
                           {
                              §§push(this.§0O§);
                           }
                           addr81:
                        }
                        while(true)
                        {
                           §§pop().stop();
                           do
                           {
                              this.§0O§ = null;
                           }
                           while(!(_loc1_ || _loc1_));
                           
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           §§goto(addr81);
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §2"6§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            if(!this.§<4§)
            {
               if(!(_loc4_ && _loc1_))
               {
                  addr219:
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                  }
                  addr220:
               }
               while(true)
               {
                  §§push(0);
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr220);
               }
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() >= this.§1!p§.length)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc1_);
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() % 1000);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§pop();
                                                addr156:
                                                loop2:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(int(_loc1_ / 1000) == 25);
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(!(_loc4_ && _loc1_))
                                                         {
                                                            this.§<4§ = true;
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §>f§.§""1§(§>f§.§0" §,LevelManager.§'!O§);
                                                               addr93:
                                                               while(true)
                                                               {
                                                                  addr57:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§73§);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr53:
                                                                  addr46:
                                                                  return;
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr53);
                                                               }
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr57);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr117);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr179:
                                    _loc1_ = §§pop();
                                 }
                              }
                              addr143:
                           }
                           _loc2_++;
                           continue;
                        }
                        §§goto(addr156);
                     }
                     else
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop() + this.§1!p§[_loc2_]));
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr143);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr219);
      }
      
      protected function §>>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §,3§.getScore();
         §§push(this.§;![§.getValue());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_ < _loc1_);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr95:
                     loop2:
                     while(true)
                     {
                        §§push(this.§<4§);
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc3_ || _loc3_)
                        {
                           while(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 this.§73§ = true;
                              }
                              break;
                           }
                           return;
                           addr72:
                        }
                     }
                  }
                  addr94:
               }
               §§goto(addr72);
            }
            §§goto(addr94);
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§'N§.isOpen);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
               addr64:
               while(true)
               {
                  continue loop0;
               }
            }
            return §1-§.STATE_STATUS_RUNNING;
         }
         while(false)
         {
            §§goto(addr35);
         }
         §§push(super.run(param1));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            loop7:
            while(true)
            {
               if(§§pop() == §1-§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.updateCurrentScore(param1);
                     loop9:
                     while(_loc3_)
                     {
                        §§push(this.§`!U§);
                        while(true)
                        {
                           §§push(§8!N§);
                           addr273:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop13:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr277:
                                          loop29:
                                          while(true)
                                          {
                                             §§push(§#6§.§6!z§);
                                             addr228:
                                             while(true)
                                             {
                                                §§push(§§pop().objects.isPigsAlive());
                                                addr230:
                                                while(_loc3_ || this)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                continue loop29;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                this.§@!$§();
                                             }
                                             §§goto(addr277);
                                          }
                                          while(true)
                                          {
                                          }
                                          addr268:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§`!U§);
                                          loop18:
                                          while(true)
                                          {
                                             §§push(§8!N§);
                                             addr216:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(!_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop26:
                                                               for(; _loc3_; §§push(§§pop() == §2a§.§0T§),if(!(_loc3_ || param1))
                                                               {
                                                                  continue;
                                                               },addr117:,if(_loc3_ || param1)
                                                               {
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        §§goto(addr150);
                                                                     }
                                                                     addr85:
                                                                     return §1-§.STATE_STATUS_RUNNING;
                                                                     addr148:
                                                                  }
                                                                  §§goto(addr238);
                                                               },while(!_loc4_)
                                                               {
                                                                  continue loop25;
                                                                  §§goto(addr117);
                                                               },while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr222);
                                                               })
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(§#6§.§6!z§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop().slingshot.mSlingShotState);
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           addr290:
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr268);
                                                                     }
                                                                     addr222:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           break;
                                                                        }
                                                                        addr289:
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(§7!S§);
                           if(_loc3_ || param1)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr197);
                                 §§push(§§pop() == §§pop());
                              }
                              §§goto(addr273);
                           }
                           §§goto(addr216);
                        }
                     }
                  }
               }
               §§goto(addr289);
            }
         }
         §§goto(addr277);
      }
      
      protected function §@!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`!U§ = §7!S§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentState(§=!&§.§-N§);
         }
         loop0:
         while(true)
         {
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop1:
            while(true)
            {
               §§push(this.§0O§);
               loop2:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     while(true)
                     {
                        this.§0O§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_MightyEagle").mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },null,0.5);
                        continue loop0;
                     }
                     addr104:
                  }
                  else
                  {
                     while(true)
                     {
                        this.§`!U§ = §;!s§;
                        loop6:
                        for(; _loc1_; while(true)
                        {
                           if(_loc2_ && this)
                           {
                              continue loop6;
                           }
                           §§goto(addr91);
                        },continue loop2)
                        {
                           §§push(this.§0O§);
                           while(true)
                           {
                              §§pop().onComplete = this.§&s§;
                              §§push(this.§0O§);
                              addr91:
                              continue loop6;
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                     addr92:
                  }
               }
            }
         }
      }
      
      protected function §&s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0O§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
         }
         while(true)
         {
            this.§0O§.play();
            while(!(_loc2_ && this))
            {
               this.§`!U§ = §;!s§;
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§#6§.§6!z§.objects.mMightyEagleAdded)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(§<!z§.STATE_NAME);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return §&!>§.STATE_NAME;
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §8!u§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_)
            {
               §§push(82);
               if(!_loc3_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr79:
                     §§push(0);
                     if(_loc3_)
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
                     §!!7§.§-V§();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     continue;
               }
            }
            §§goto(addr79);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§#6§.§4x§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || _loc3_)
               {
                  §§push(49);
                  if(_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr153:
                           }
                        }
                        else
                        {
                           addr145:
                           §§push(2);
                           if(_loc4_ || param1)
                           {
                              §§goto(addr153);
                           }
                           else
                           {
                              addr215:
                              if(§§pop() === _loc2_)
                              {
                                 addr217:
                                 §§push(6);
                                 if(_loc4_ || this)
                                 {
                                    addr225:
                                 }
                              }
                              else
                              {
                                 §§push(7);
                              }
                           }
                        }
                        §§goto(addr230);
                     }
                     else
                     {
                        §§push(50);
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(_loc4_)
                              {
                                 addr124:
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    addr174:
                                 }
                              }
                              else
                              {
                                 §§goto(addr217);
                              }
                              §§goto(addr230);
                           }
                           else
                           {
                              §§push(51);
                              if(_loc4_ || _loc2_)
                              {
                                 addr136:
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr145);
                                    }
                                    else
                                    {
                                       §§goto(addr193);
                                    }
                                 }
                                 else
                                 {
                                    §§push(52);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() === _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(3);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§goto(addr174);
                                             }
                                             else
                                             {
                                                addr178:
                                                if(§§pop() === _loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(4);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr217);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(54);
                                                   if(!_loc3_)
                                                   {
                                                      if(§§pop() === _loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr193:
                                                            §§push(5);
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr225);
                                                            }
                                                            else
                                                            {
                                                               addr206:
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr217);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(55);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§goto(addr215);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr225);
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       else
                                       {
                                          §§push(53);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr178);
               }
               §§goto(addr124);
               addr65:
            }
            addr230:
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
                  §!!7§.§-V§();
                  loop0:
                  while(true)
                  {
                     mNextState = §!!7§.STATE_NAME;
                     addr54:
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  addr34:
                  break;
               case 5:
                  §!!7§.§,L§();
                  if(_loc4_)
                  {
                     if(_loc4_ || param1)
                     {
                        mNextState = §!!7§.STATE_NAME;
                        if(_loc4_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        break;
                     }
                     §§goto(addr54);
                     §§goto(addr34);
                  }
                  break;
               case 6:
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            if(param3 is §^!D§)
            {
               if(!(_loc6_ && param2))
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§'M§.LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§push(§'M§.LISTENER_EVENT_MOUSE_UP);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       addr103:
                                       §="7§.§[b§();
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        if(!(_loc6_ && param1))
                        {
                           §="7§.§<5§();
                        }
                     }
                     addr74:
                     var _loc4_:* = param2;
                     if(_loc5_ || param3)
                     {
                        §§push("CLOSE_TUTORIAL");
                        if(!(_loc6_ && param2))
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_ || param3)
                                 {
                                    addr174:
                                    §§push(0);
                                    if(_loc6_ && param2)
                                    {
                                       addr266:
                                    }
                                 }
                                 else
                                 {
                                    addr230:
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("PAUSE");
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       addr194:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(1);
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr258:
                                             §§push(3);
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr266);
                                             }
                                          }
                                          §§goto(addr278);
                                       }
                                       else
                                       {
                                          §§push("RESTART_LEVEL");
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && param3))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_ || param3)
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                else
                                                {
                                                   §§push("MIGHTY_EAGLE");
                                                   if(_loc5_ || param3)
                                                   {
                                                      addr252:
                                                      §§push(_loc4_);
                                                      if(_loc5_)
                                                      {
                                                         addr255:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr258);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr269:
                                                            if("FULLSCREEN_BUTTON" !== _loc4_)
                                                            {
                                                               addr278:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §'N§.§]>§();
                                                                     break;
                                                                     addr79:
                                                                  case 1:
                                                                     mNextState = this.getPauseState();
                                                                     break;
                                                                     addr73:
                                                                  case 2:
                                                                     §!!7§.§-V§();
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr79);
                                                                     }
                                                                     break;
                                                                  case 3:
                                                                     break;
                                                                  case 4:
                                                                     AngryBirdsFP11.§@<§.§'!+§();
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr43);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr73);
                                                                        }
                                                                     }
                                                               }
                                                               return;
                                                               §§push(5);
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr252);
                                       }
                                    }
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr174);
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr103);
      }
      
      protected function getPauseState() : String
      {
         return §7l§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            §#6§.§6!z§.useMightyEagle();
         }
         §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§));
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §6w§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            while(true)
            {
               this.§1e§ = true;
               loop1:
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.hideMightyEagleButton();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>>§();
         }
      }
   }
}
