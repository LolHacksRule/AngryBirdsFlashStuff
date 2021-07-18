package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§4!n§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5!V§.§[!6§;
   import §5"-§.§5y§;
   import §=!M§.§"o§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6l§
   {
      
      public static const §'=§:String = "StatePlay";
      
      public static const §#!q§:int = 50;
      
      protected static const §6!`§:String = "MightyEagleButtonVisible";
      
      protected static const §'A§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §]"§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §'=§ = "StatePlay";
            loop0:
            while(true)
            {
               §#!q§ = 50;
               loop1:
               do
               {
                  §6!`§ = "MightyEagleButtonVisible";
                  while(_loc1_)
                  {
                     §'A§ = "MightyEagleButtonPrepareHide";
                     while(_loc1_ || _loc1_)
                     {
                        §]"§ = "MightyEagleButtonHide";
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(_loc2_ && StatePlay);
               
            }
         }
      }
      
      protected var §&"$§:§^J§;
      
      protected var §6@§:§3^§;
      
      protected var §?!h§:String;
      
      protected var §=;§:Boolean;
      
      private var §2L§:Vector.<int>;
      
      private var §<!%§:Boolean;
      
      private var §0!n§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&"$§ = new §^J§();
            while(true)
            {
               this.§2L§ = new Vector.<int>(32);
            }
            addr132:
         }
         while(true)
         {
            super(param1,param2);
            loop2:
            while(!_loc3_)
            {
               this.§2L§[3] = 5000;
               loop3:
               while(true)
               {
                  this.§2L§[7] = 5000;
                  loop4:
                  for(; !_loc3_; if(!(_loc3_ && _loc3_))
                  {
                     continue loop2;
                  })
                  {
                     this.§2L§[8] = 5000;
                     loop5:
                     while(true)
                     {
                        this.§2L§[9] = 5000;
                        while(true)
                        {
                           if(_loc4_ || param2)
                           {
                              continue loop3;
                           }
                           continue loop5;
                           addr77:
                           this.§2L§[12] = 5000;
                           if(!_loc3_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr132);
               }
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         do
         {
            §?E§ = new §'s§(this);
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelPlay[0]);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §1!'§() : void
      {
      }
      
      private function §%t§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§?E§.getItemByName("TextField_METimer") as §`!<§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^3§();
            while(true)
            {
               super.levelStarted();
               addr80:
               if(!_loc2_)
               {
                  loop4:
                  while(true)
                  {
                     §5!U§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
                     loop5:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr68:
                        while(true)
                        {
                           §?E§.getItemByName("Button_MightyEagle").setVisibility(true);
                           break loop5;
                        }
                     }
                     addr73:
                     addr96:
                     while(_loc1_ || _loc2_)
                     {
                        §§goto(addr80);
                     }
                     while(true)
                     {
                        if(!§?E§.getItemByName("Button_MightyEagle"))
                        {
                           continue loop4;
                        }
                        §§goto(addr68);
                        §§goto(addr73);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      protected function §^3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5!U§.§9&§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
      }
      
      protected function §&!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?E§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §?E§.getItemByName("Container_MEScore").setVisibility(false);
               loop1:
               for(; !(_loc2_ && _loc2_); while(!(_loc2_ && this))
               {
                  §?E§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  if(_loc1_ || this)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     §?E§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §7g§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(!_loc5_)
         {
            this.§&"$§.§&!Y§(0);
            if(_loc6_ || _loc1_)
            {
               while(true)
               {
                  this.§9!+§(0);
                  if(!_loc5_)
                  {
                     this.§&!M§();
                     if(_loc6_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        if(§]x§.§<1§ != null)
                        {
                           if(!_loc5_)
                           {
                              addr60:
                              _loc1_ = new Bitmap(§]x§.§<1§,"auto",true);
                              if(!_loc5_)
                              {
                                 _loc1_.x = -_loc1_.width / 2;
                                 if(_loc6_)
                                 {
                                    addr79:
                                    _loc1_.y = -_loc1_.height / 2;
                                 }
                                 _loc2_ = new MovieClip();
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    _loc2_.addChild(_loc1_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr117:
                                       _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                                       if(!_loc5_)
                                       {
                                          _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             (§?E§.getItemByName("MovieClip_AvatarPlaceholder") as §%+§).changeMovieClip(_loc2_);
                                             if(!_loc6_)
                                             {
                                             }
                                             addr161:
                                             this.§?!h§ = §6!`§;
                                             if(!_loc5_)
                                             {
                                                this.§6@§ = null;
                                                break;
                                                addr166:
                                             }
                                             return;
                                             addr187:
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    §?E§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                                    §§goto(addr161);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr60);
                  }
                  break;
               }
               do
               {
                  this.§=;§ = false;
               }
               while(!_loc6_);
               
               §§goto(addr161);
            }
            §§goto(addr166);
         }
         §§goto(addr60);
      }
      
      public function §5!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               (§?E§.getItemByName("Button_Pause") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(true)
               {
                  this.§5!n§();
                  loop2:
                  for(; _loc2_ || this; while(_loc2_ || _loc2_)
                  {
                     this.§6@§ = null;
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr37);
                  })
                  {
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(this.§6@§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop() != null)
                           {
                              while(true)
                              {
                                 §§push(this.§6@§);
                                 addr62:
                                 addr37:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    continue loop2;
                                 }
                              }
                              addr60:
                           }
                           return;
                        }
                        §§goto(addr62);
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      protected function §^!-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && this))
         {
            if(!this.§<!%§)
            {
               loop20:
               do
               {
                  §§push(0);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc5_ || _loc1_))
                        {
                           break;
                        }
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           continue loop20;
                        }
                     }
                  }
               }
               while(!_loc5_);
               
               loop23:
               while(true)
               {
                  §§push(_loc2_);
                  loop13:
                  while(true)
                  {
                     if(§§pop() >= this.§2L§.length)
                     {
                        loop6:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc1_);
                              loop15:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() % 1000);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop7:
                                       for(; !§§pop(); while(true)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             break loop7;
                                          }
                                          continue loop7;
                                       })
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr158:
                                             while(true)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   §§push(int(_loc1_ / 1000) == 25);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   continue loop7;
                                                }
                                                addr168:
                                                while(true)
                                                {
                                                   continue loop23;
                                                }
                                             }
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§<!%§ = true;
                                                loop5:
                                                while(true)
                                                {
                                                   §4!n§.§@!Q§(§4!n§.§6C§,§3!w§.§%n§);
                                                   addr90:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr158);
                                          }
                                          break;
                                       }
                                       addr50:
                                       while(true)
                                       {
                                          §§push(this.§0!n§);
                                          if(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(!_loc4_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(int(getTimer()));
                                                         if(_loc4_ && _loc1_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop2:
                                                            do
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(getTimer() - _loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(§§pop() >= 1000)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(!_loc5_);
                                                            
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr46);
                                                            }
                                                            continue;
                                                         }
                                                         addr179:
                                                         while(true)
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr180:
                                                            while(true)
                                                            {
                                                               _loc2_++;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr90);
                                                }
                                                addr46:
                                                return;
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr171:
                                    }
                                    addr173:
                                 }
                                 §§goto(addr179);
                              }
                           }
                           §§goto(addr180);
                        }
                     }
                     else
                     {
                        §§goto(addr171);
                     }
                     §§goto(addr173);
                  }
               }
               addr209:
            }
            §§goto(addr50);
         }
         §§goto(addr209);
      }
      
      protected function §#!n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §-!K§.getScore();
         §§push(this.§&"$§.getValue());
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_ < _loc1_);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr100:
                     loop2:
                     while(true)
                     {
                        §§push(this.§<!%§);
                        if(_loc3_)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop3;
                           }
                           addr66:
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              break loop2;
                              §§goto(addr66);
                           }
                        }
                        break;
                     }
                     loop1:
                     while(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           while(true)
                           {
                              this.§0!n§ = true;
                           }
                           addr76:
                        }
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§goto(addr100);
                        }
                     }
                     return;
                  }
                  addr99:
               }
               §§goto(addr67);
            }
            §§goto(addr99);
         }
         §§goto(addr76);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§5h§.isOpen);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr59:
               }
               while(true)
               {
                  §§push(§=!X§.§!'§.objects.mSardineCanAdded);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              (§?E§.getItemByName("Container_MEScore") as §`!T§).setVisibility(true);
                              addr45:
                              while(true)
                              {
                              }
                           }
                        }
                        §§goto(addr59);
                        addr36:
                     }
                     while(true)
                     {
                        this.§^!-§();
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr36);
                     }
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(super.run(param1));
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() == §5y§.STATE_STATUS_RUNNING)
                     {
                        addr221:
                        this.§9!+§(param1);
                        addr225:
                        if(!_loc4_)
                        {
                           addr218:
                           §§push(this.§?!h§ == §6!`§);
                           if(this.§?!h§ == §6!`§)
                           {
                              addr219:
                              §§pop();
                              addr220:
                              §§push(!§=!X§.§!'§.objects.isPigsAlive());
                              if(!_loc4_)
                              {
                                 addr205:
                                 if(§§pop())
                                 {
                                    addr207:
                                    if(_loc3_)
                                    {
                                       this.§0R§();
                                       addr211:
                                    }
                                    §§goto(addr220);
                                 }
                                 addr159:
                                 §§push(this.§?!h§);
                                 if(_loc3_)
                                 {
                                    addr162:
                                    §§push(§6!`§);
                                    if(!_loc4_)
                                    {
                                       addr166:
                                       §§push(§§pop() == §§pop());
                                       if(!(§§pop() == §§pop()))
                                       {
                                          addr167:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§pop();
                                                   addr189:
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(this.§?!h§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§'A§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  addr134:
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr141:
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              addr144:
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§=!X§.§!'§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop().slingshot.mSlingShotState);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() == §[!6§.§ L§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr90:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc3_ || param1))
                                                                                                         {
                                                                                                            §§goto(addr189);
                                                                                                         }
                                                                                                         this.§!!J§();
                                                                                                         addr70:
                                                                                                         return §5y§.STATE_STATUS_RUNNING;
                                                                                                         addr105:
                                                                                                      }
                                                                                                      §§goto(addr144);
                                                                                                   }
                                                                                                   §§goto(addr105);
                                                                                                }
                                                                                                §§goto(addr70);
                                                                                             }
                                                                                             §§goto(addr141);
                                                                                          }
                                                                                          §§goto(addr250);
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                    }
                                                                                    addr249:
                                                                                    addr250:
                                                                                    return §§pop();
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 §§goto(addr225);
                                                                              }
                                                                              §§goto(addr207);
                                                                           }
                                                                           §§goto(addr167);
                                                                        }
                                                                        §§goto(addr90);
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr218);
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr250);
               }
               §§goto(addr219);
            }
            return §5y§.STATE_STATUS_RUNNING;
         }
         §§goto(addr38);
      }
      
      protected function §0R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§?!h§ = §'A§;
         }
      }
      
      protected function §!!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentState(§9!!§.§%!§);
            while(true)
            {
               (§?E§.getItemByName("Button_MightyEagle") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            addr147:
         }
         loop1:
         while(true)
         {
            §§push(this.§6@§);
            loop2:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this.§6@§ = §7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_MightyEagle").mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.5);
                  }
                  loop3:
                  while(true)
                  {
                     addr80:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           continue loop1;
                        }
                        continue loop3;
                        addr58:
                        while(!(_loc1_ && this))
                        {
                           §§push(this.§6@§);
                           if(_loc1_ && _loc1_)
                           {
                              continue loop2;
                           }
                           §§pop().play();
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              return;
                           }
                           §§goto(addr147);
                        }
                     }
                     continue loop1;
                  }
               }
               while(true)
               {
                  this.§?!h§ = §]"§;
                  §§goto(addr80);
               }
            }
         }
      }
      
      protected function §10§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6@§ = §7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§6@§.play();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§?!h§ = §]"§;
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§=!X§.§!'§.objects.mMightyEagleAdded)
            {
               if(_loc2_ || _loc2_)
               {
                  addr56:
                  §§push(§@!m§.§'=§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return §`t§.§'=§;
               }
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §%!F§.§'=§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_ || param1)
            {
               §§push(82);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr84:
                     §§push(0);
                     if(_loc3_ && param1)
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
                     §0!v§.§4[§();
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     continue;
               }
            }
            §§goto(addr84);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§=!X§.§>3§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || this)
               {
                  §§push(49);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                              addr131:
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(2);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr230:
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
                                             §0!v§.§4[§();
                                             if(_loc4_ || _loc3_)
                                             {
                                                mNextState = §0!v§.§'=§;
                                                addr31:
                                                break;
                                                addr44:
                                             }
                                             break;
                                          case 5:
                                             §0!v§.§`" §();
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   mNextState = §0!v§.§'=§;
                                                   if(!_loc4_)
                                                   {
                                                      break loop1;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(false)
                                                      {
                                                         break;
                                                      }
                                                      break loop1;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr44);
                                             }
                                             §§goto(addr31);
                                          case 6:
                                       }
                                       return;
                                       addr148:
                                    }
                                    else
                                    {
                                       addr169:
                                       §§goto(addr230);
                                    }
                                 }
                                 else
                                 {
                                    addr212:
                                    §§push(6);
                                    if(!_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr230);
                              }
                              else
                              {
                                 §§push(52);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr157:
                                    if(§§pop() === _loc2_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                             §§goto(addr169);
                                          }
                                          else
                                          {
                                             addr178:
                                             if(§§pop() === _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr198:
                                                   §§push(5);
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr206:
                                                   }
                                                }
                                                §§goto(addr230);
                                             }
                                             else
                                             {
                                                §§push(54);
                                                if(_loc4_)
                                                {
                                                   addr194:
                                                   if(§§pop() === _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(55);
                                                      if(_loc4_)
                                                      {
                                                         addr210:
                                                         if(§§pop() === _loc2_)
                                                         {
                                                            §§goto(addr212);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr230);
                                                            §§push(7);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      addr225:
                                                      §§goto(addr230);
                                                   }
                                                }
                                                §§goto(addr225);
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       addr182:
                                       §§push(4);
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr230);
                                       }
                                       else
                                       {
                                          §§goto(addr210);
                                       }
                                    }
                                    else
                                    {
                                       §§push(53);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr178);
                                       }
                                    }
                                    §§goto(addr194);
                                 }
                              }
                              §§goto(addr225);
                           }
                        }
                        else
                        {
                           addr119:
                           §§push(1);
                           if(_loc3_ && _loc2_)
                           {
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr230);
                     }
                     else
                     {
                        §§push(50);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr119);
                              }
                              else
                              {
                                 §§goto(addr182);
                              }
                           }
                           else
                           {
                              §§push(51);
                              if(_loc4_)
                              {
                                 §§goto(addr131);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr230);
                        }
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr157);
               }
               §§goto(addr212);
               addr48:
            }
            §§goto(addr230);
         }
         §§goto(addr48);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param3 is §="#§)
            {
               if(_loc5_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§-!S§.LISTENER_EVENT_MOUSE_DOWN);
                     addr117:
                     addr69:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                           }
                           addr122:
                           break;
                           addr122:
                        }
                        continue loop0;
                     }
                     var _loc4_:* = param2;
                     if(_loc5_)
                     {
                        if("CLOSE_TUTORIAL" === _loc4_)
                        {
                           if(_loc5_ || this)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                              }
                           }
                           else
                           {
                              addr182:
                              §§push(3);
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr207);
                        }
                        else if("PAUSE" === _loc4_)
                        {
                           if(_loc5_ || param2)
                           {
                              addr154:
                              §§push(1);
                              if(_loc6_ && param1)
                              {
                              }
                           }
                           else
                           {
                              addr168:
                              §§push(2);
                              if(!(_loc5_ || param3))
                              {
                                 §§goto(addr202);
                              }
                           }
                        }
                        else
                        {
                           if("RESTART_LEVEL" === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr168);
                              }
                           }
                           else if("MIGHTY_EAGLE" === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr182);
                              }
                           }
                           else if("FULLSCREEN_BUTTON" !== _loc4_)
                           {
                              addr207:
                              switch(§§pop())
                              {
                                 case 0:
                                    §5h§.§7h§();
                                    break;
                                    addr74:
                                 case 1:
                                    mNextState = this.§5!E§();
                                    break;
                                    addr68:
                                 case 2:
                                    §0!v§.§4[§();
                                    addr58:
                                    if(!_loc6_)
                                    {
                                       addr45:
                                       mNextState = §0!v§.§'=§;
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr74);
                                    break;
                                 case 3:
                                    break;
                                 case 4:
                                    AngryBirdsFP11.§%d§.§9+§();
                                    if(_loc5_ || param3)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr68);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr58);
                                       }
                                       §§goto(addr45);
                                    }
                              }
                              return;
                              §§push(5);
                           }
                           §§goto(addr207);
                           if(_loc5_)
                           {
                              §§goto(addr202);
                           }
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr154);
                  }
               }
               §"o§.§2!a§();
               §§goto(addr122);
            }
            §§goto(addr69);
         }
         §§goto(addr122);
      }
      
      protected function §5!E§() : String
      {
         return §4g§.§'=§;
      }
      
      protected function §1!@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §=!X§.§!'§.§1!@§();
         }
         §§push(AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §?E§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         }
         do
         {
            this.§=;§ = true;
            do
            {
               this.§!!J§();
            }
            while(!_loc3_);
            
         }
         while(_loc2_ && this);
         
      }
      
      protected function §9!+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!n§();
         }
      }
   }
}
