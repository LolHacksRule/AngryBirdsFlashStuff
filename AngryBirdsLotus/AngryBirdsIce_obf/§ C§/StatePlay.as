package § C§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9!!§.§4!<§;
   import §;8§.§!$§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §[x§.§9"§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class StatePlay extends §]?§
   {
      
      public static const §?B§:String = "StatePlay";
      
      public static const §@&§:int = 50;
      
      protected static const §4!0§:String = "MightyEagleButtonVisible";
      
      protected static const §7T§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §=N§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?B§ = "StatePlay";
            loop0:
            while(true)
            {
               §@&§ = 50;
               while(true)
               {
                  §4!0§ = "MightyEagleButtonVisible";
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                     while(true)
                     {
                        §=N§ = "MightyEagleButtonHide";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected var §'!#§:§2N§;
      
      protected var §`I§:§?A§;
      
      protected var §]§:String;
      
      protected var §@o§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§'!#§ = new §2N§();
            do
            {
               super(param1,param2);
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            do
            {
               §,R§ = new §#H§(this);
               do
               {
                  §,R§.init(§set §.§&!1§.Views.View_LevelPlay[0]);
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      protected function §[U§() : void
      {
      }
      
      private function §`!5§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§,R§.getItemByName("TextField_METimer") as §'4§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@6§.§&t§();
            super.levelStarted();
            loop0:
            while(true)
            {
               if(§,R§.getItemByName("Button_MightyEagle"))
               {
                  while(true)
                  {
                     §,R§.getItemByName("Button_MightyEagle").setVisibility(true);
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(§@6§);
                  §§push("LevelStartsBirdsMilitary");
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() + (1 + int(Math.random() * 2)));
                  }
                  §§pop().playSound(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §,R§.getItemByName("TextField_METimer").setVisibility(false);
            while(true)
            {
               §,R§.getItemByName("Container_MEScore").setVisibility(false);
               addr48:
               if(_loc1_)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            §,R§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
            while(_loc2_ || _loc2_)
            {
               §,R§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr60);
      }
      
      protected function §^3§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc5_ || _loc1_)
         {
            this.§'!#§.assign(0);
            while(true)
            {
               this.updateCurrentScore(0);
               this.initMightyEagleButton();
               if(!_loc6_)
               {
                  if(false)
                  {
                     continue;
                  }
                  if(§,!?§.§<J§ != null)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc1_ = new Bitmap(§,!?§.§<J§,"auto",true);
                        if(!(_loc6_ && this))
                        {
                           _loc1_.x = -_loc1_.width / 2;
                           if(!(_loc6_ && _loc2_))
                           {
                              addr99:
                              _loc1_.y = -_loc1_.height / 2;
                           }
                           _loc2_ = new MovieClip();
                           if(_loc5_)
                           {
                              _loc2_.addChild(_loc1_);
                              if(_loc5_ || _loc3_)
                              {
                                 _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                                 if(!_loc6_)
                                 {
                                    _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                                    if(_loc5_ || this)
                                    {
                                    }
                                    addr181:
                                    this.§]§ = §4!0§;
                                    if(_loc5_ || _loc3_)
                                    {
                                       break;
                                    }
                                    this.§@o§ = false;
                                    return;
                                    addr200:
                                    addr204:
                                 }
                              }
                              (§,R§.getItemByName("MovieClip_AvatarPlaceholder") as §=!=§).changeMovieClip(_loc2_);
                              if(!(_loc6_ && this))
                              {
                                 §,R§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                              }
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr181);
               }
               break;
            }
            this.§`I§ = null;
            §§goto(addr204);
         }
         §§goto(addr181);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            while(_loc2_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.deActivate();
         (§,R§.getItemByName("Button_Pause") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         while(true)
         {
            this.deactivateMightyEagleButton();
            §§push(this.§`I§);
            if(_loc1_)
            {
               break;
            }
            if(§§pop() == null)
            {
               return;
            }
            addr18:
            if(!(_loc1_ && _loc1_))
            {
               §§push(this.§`I§);
               break;
            }
         }
         §§pop().stop();
         this.§`I§ = null;
         §§goto(addr18);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§4!<§.isOpen);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return §-§.STATE_STATUS_RUNNING;
                  }
                  addr53:
                  (§,R§.getItemByName("Container_MEScore") as §&F§).setVisibility(true);
               }
               else
               {
                  addr50:
                  if(§[o§.§='§.objects.mSardineCanAdded)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr53);
                     }
                  }
               }
               §§push(super.run(param1));
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     if(§§pop() != §-§.STATE_STATUS_RUNNING)
                     {
                        §§push(_loc2_);
                        break;
                     }
                     this.updateCurrentScore(param1);
                     addr95:
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     §§push(§§pop() == §9"§.§5c§);
                     if(_loc4_)
                     {
                        addr117:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr121:
                              if(_loc4_ || _loc3_)
                              {
                                 this.hideMightyEagleButton();
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§]§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§4!0§);
                                             addr174:
                                             addr213:
                                             while(_loc4_ || this)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop12:
                                                for(; !_loc3_; while(!(_loc3_ && _loc3_))
                                                {
                                                   §§goto(addr168);
                                                })
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc4_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr117);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§push(§[o§.§='§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().objects.isPigsAlive());
                                                                     break loop12;
                                                                     addr168:
                                                                     §§pop();
                                                                     §§push(§[o§.§='§);
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop().slingshot.mSlingShotState);
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr95);
                                                                  }
                                                               }
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     this.§47§();
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr149:
                                                      }
                                                      §§pop();
                                                      continue loop10;
                                                      return §-§.STATE_STATUS_RUNNING;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr204);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr215);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              while(true)
                              {
                                 §§goto(addr212);
                                 §§goto(addr121);
                              }
                              addr222:
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr161);
                  }
                  return §§pop();
               }
               §§goto(addr222);
            }
         }
         §§goto(addr50);
      }
      
      protected function §47§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]§ = §7T§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentState(§<r§.§?!B§);
            while(true)
            {
               (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               §§push(this.§`I§);
               while(true)
               {
                  if(§§pop() == null)
                  {
                     this.§`I§ = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_MightyEagle").mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.5);
                  }
                  this.§]§ = §=N§;
                  if(_loc1_)
                  {
                     break;
                  }
                  §§push(this.§`I§);
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     §§pop().onComplete = this.§4[§;
                     do
                     {
                        §§push(this.§`I§);
                        if(_loc2_ || _loc2_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(§§pop().play(), _loc1_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      protected function §4[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`I§ = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§`I§.play();
               while(_loc2_ || this)
               {
                  this.§]§ = §=N§;
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§[o§.§='§.objects.mMightyEagleAdded)
            {
               if(_loc2_)
               {
                  §§push(§#y§.§?B§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  return §]O§.§?B§;
               }
               return §§pop();
            }
         }
         §§goto(addr31);
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      override public function getLoserState() : String
      {
         return §+!"§.§?B§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc3_)
            {
               §§push(82);
               if(!(_loc3_ && this))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr89:
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
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §7!6§.§<!G§();
                     while(true)
                     {
                        mNextState = this.§`^§();
                        if(_loc3_)
                        {
                           break loop2;
                        }
                        if(!(_loc3_ && param1))
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
               }
               return;
            }
            §§goto(addr89);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(§[o§.§'Q§)
            {
               var _loc2_:* = param1.keyCode;
               if(_loc4_ || param1)
               {
                  §§push(49);
                  if(_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(0);
                        }
                        else
                        {
                           addr166:
                           §§push(6);
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else if(50 === _loc2_)
                     {
                        addr113:
                        §§push(1);
                     }
                     else if(51 === _loc2_)
                     {
                        §§push(!(_loc3_ && _loc3_) ? 2 : 4);
                     }
                     else
                     {
                        §§push(52);
                        if(!_loc3_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§push(3);
                           }
                           else if(53 === _loc2_)
                           {
                              §§goto(addr137);
                           }
                           else
                           {
                              §§push(54);
                              if(_loc4_)
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    §§push(5);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr174:
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
                                             §7!6§.§<!G§();
                                             if(!_loc3_)
                                             {
                                                mNextState = §7!6§.§?B§;
                                                addr39:
                                                break;
                                                addr54:
                                             }
                                             break;
                                          case 5:
                                             §7!6§.§2v§();
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   mNextState = §7!6§.§?B§;
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr54);
                                                §§goto(addr39);
                                             }
                                             break;
                                          case 6:
                                       }
                                       return;
                                       addr162:
                                    }
                                    §§goto(addr174);
                                 }
                                 else
                                 {
                                    §§push(55);
                                 }
                                 §§goto(addr174);
                              }
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§goto(addr174);
                                 §§push(7);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr162);
               }
               §§goto(addr113);
               addr58:
            }
            §§goto(addr174);
         }
         §§goto(addr58);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(param3 is §^P§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§-[§.LISTENER_EVENT_MOUSE_DOWN);
                     loop2:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!(_loc5_ && param3))
                           {
                              §§push(§-[§.LISTENER_EVENT_MOUSE_UP);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §!$§.§`?§();
                                          }
                                          addr111:
                                       }
                                       else
                                       {
                                          break;
                                          addr143:
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          break loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        if(!(_loc5_ && this))
                        {
                           §!$§.§"r§();
                        }
                        §§goto(addr143);
                     }
                  }
               }
            }
            var _loc4_:* = param2;
            if(!(_loc5_ && param1))
            {
               §§push("CLOSE_TUTORIAL");
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr221:
                           §§push(2);
                           if(_loc5_)
                           {
                           }
                        }
                        §§goto(addr269);
                     }
                     else
                     {
                        §§push("PAUSE");
                        if(!(_loc5_ && this))
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param3)
                           {
                              addr190:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr193:
                                    §§push(1);
                                    if(_loc5_ && param1)
                                    {
                                    }
                                    §§goto(addr269);
                                 }
                                 else
                                 {
                                    §§goto(addr221);
                                 }
                              }
                              else
                              {
                                 §§push("RESTART_LEVEL");
                                 if(_loc6_ || param1)
                                 {
                                    addr210:
                                    §§push(_loc4_);
                                    if(!_loc5_)
                                    {
                                       addr213:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr221);
                                          }
                                          §§goto(addr269);
                                       }
                                       else
                                       {
                                          §§push("MIGHTY_EAGLE");
                                          if(!(_loc5_ && param3))
                                          {
                                             addr243:
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(3);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr257);
                                                      }
                                                      else
                                                      {
                                                         addr264:
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr261:
                                                      §§push(4);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                else
                                                {
                                                   §§push("FULLSCREEN_BUTTON");
                                                }
                                                §§goto(addr261);
                                             }
                                             addr260:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr261);
                                             }
                                             else
                                             {
                                                addr269:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §4!<§.§,[§();
                                                      break;
                                                      addr85:
                                                   case 1:
                                                      mNextState = this.§;!=§();
                                                      if(_loc6_ || param3)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                      break;
                                                   case 2:
                                                      §7!6§.§<!G§();
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr44:
                                                         mNextState = §7!6§.§?B§;
                                                         break;
                                                         addr49:
                                                      }
                                                      break;
                                                   case 3:
                                                      break;
                                                   case 4:
                                                      AngryBirdsFP11.§?L§.§,!!§();
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr44);
                                                         }
                                                         §§goto(addr49);
                                                      }
                                                }
                                                return;
                                                §§push(5);
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr260);
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr243);
                              }
                              §§goto(addr269);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr210);
                     }
                  }
                  §§goto(addr190);
               }
               §§goto(addr210);
            }
            §§goto(addr193);
         }
         §§goto(addr111);
      }
      
      protected function §;!=§() : String
      {
         return §,§.§?B§;
      }
      
      protected function §4x§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §[o§.§='§.§4x§();
         }
         §§push(AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §,R§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            while(true)
            {
               this.§@o§ = true;
               while(_loc3_)
               {
                  this.hideMightyEagleButton();
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr78:
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
