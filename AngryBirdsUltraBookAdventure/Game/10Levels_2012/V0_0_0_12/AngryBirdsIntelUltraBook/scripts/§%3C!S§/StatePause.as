package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2!H§.LevelSlingshotObject;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   
   public class StatePause extends StateBase
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var OFFSCREEN_X:Boolean = true;
         var STATE_NAME:Boolean = false;
         if(!STATE_NAME)
         {
            loop0:
            while(true)
            {
               OFFSCREEN_X = -250;
               while(true)
               {
                  loop2:
                  while(!STATE_NAME)
                  {
                     while(true)
                     {
                        STATE_NAME = "PauseState";
                        if(!(STATE_NAME && OFFSCREEN_X))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected var §9q§:§!T§ = null;
      
      public function StatePause(initState:Boolean = false, name:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || initState)
         {
         }
         if(_loc3_ || name)
         {
            while(true)
            {
               addr82:
               while(_loc3_)
               {
               }
            }
         }
         loop2:
         while(true)
         {
            while(true)
            {
               super(initState,name);
               while(_loc3_ || this)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break loop2;
                  }
                  §§goto(addr82);
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         while(true)
         {
            super.init();
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §5!M§ = new §6"§(this);
                  loop3:
                  while(true)
                  {
                     while(_loc1_)
                     {
                        §5!M§.init(§>!^§.§8'§.Views.View_LevelPause[0]);
                        while(_loc1_ || _loc2_)
                        {
                           continue loop3;
                           if(!(_loc2_ && this))
                           {
                              continue loop1;
                           }
                        }
                     }
                     continue loop2;
                  }
               }
            }
            if(_loc2_ && _loc2_)
            {
               continue;
            }
            §§goto(addr102);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super.activate();
               while(true)
               {
                  while(_loc2_)
                  {
                     this.openPauseMenu();
                     while(_loc2_)
                     {
                        while(_loc2_)
                        {
                           §]!B§.§>F§.background.§"d§();
                           if(_loc2_ || _loc2_)
                           {
                              return;
                              addr66:
                           }
                        }
                     }
                     continue loop0;
                     addr78:
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           addr42:
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr59);
                           }
                           while(true)
                           {
                              this.setInitialButtonVisibilities();
                              §§goto(addr42);
                           }
                           addr98:
                        }
                        loop7:
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              §§goto(addr78);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§goto(addr98);
                                 continue loop7;
                              }
                              §§goto(addr66);
                              addr106:
                           }
                        }
                        addr85:
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §5!M§.getItemByName("Button_Help").setVisibility(false);
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §5!M§.getItemByName("Button_Sound").setVisibility(false);
                     continue loop1;
                     addr70:
                     if(!(_loc1_ && _loc1_))
                     {
                        loop6:
                        while(_loc1_ && this)
                        {
                           while(_loc2_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop1;
                              }
                              §§goto(addr70);
                              continue loop6;
                           }
                           continue loop0;
                        }
                        return;
                        addr77:
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §"M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               for(§§push(this.§9q§); §§pop(); )
               {
                  continue loop0;
                  while(true)
                  {
                     §§push(this.§9q§);
                     if(!(_loc1_ || this))
                     {
                        break;
                     }
                     §§pop().stop();
                     loop4:
                     while(true)
                     {
                        while(!_loc2_)
                        {
                           this.§9q§ = null;
                           loop6:
                           while(_loc1_)
                           {
                              continue loop4;
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    break loop1;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        continue loop0;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr72);
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         loop0:
         while(true)
         {
            if(LevelManager.§var§ != null)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     (§5!M§.getItemByName("TextField_LevelName") as UITextFieldRovio).§24§.text = LevelManager.§var§;
                     loop3:
                     while(true)
                     {
                        addr269:
                        while(true)
                        {
                           addr249:
                           loop6:
                           while(!(_loc1_ && this))
                           {
                              loop7:
                              for(; _loc2_; while(_loc2_ || _loc2_)
                              {
                                 §§goto(addr88);
                                 §§push(this.§9q§);
                              })
                              {
                                 this.§?!5§(false);
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §]!B§.pause();
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop2;
                                          }
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§+i§());
                                             continue loop9;
                                             addr72:
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             addr79:
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(_loc1_)
                                                {
                                                   loop19:
                                                   while(_loc2_)
                                                   {
                                                      loop20:
                                                      for(; _loc2_; while(true)
                                                      {
                                                         if(_loc1_ && this)
                                                         {
                                                            continue loop20;
                                                         }
                                                         addr65:
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            §§goto(addr72);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop7;
                                                               §§goto(addr65);
                                                            }
                                                            addr162:
                                                         }
                                                         §§goto(addr79);
                                                      },continue loop11)
                                                      {
                                                         addr84:
                                                         §§push(this.§9q§);
                                                         if(!_loc1_)
                                                         {
                                                            §§pop().play();
                                                            continue;
                                                         }
                                                         addr88:
                                                         while(true)
                                                         {
                                                            §§pop().onComplete = this.§[%§;
                                                            continue loop19;
                                                            §§goto(addr84);
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(TweenManager.§8!X§);
                                                      if(_loc1_)
                                                      {
                                                      }
                                                      §§push(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25));
                                                      if(_loc1_)
                                                      {
                                                      }
                                                      §§pop().§9q§ = §§pop().§`!6§(§§pop(),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":1},{"alpha":0},0.25));
                                                      §§goto(addr162);
                                                   }
                                                   addr165:
                                                }
                                                if(_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop10;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc1_ && this)
                                                      {
                                                         while(_loc2_)
                                                         {
                                                            this.§"M§();
                                                            continue loop14;
                                                         }
                                                         continue loop1;
                                                         addr182:
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr58);
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               (§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
               §§goto(addr249);
               §§goto(addr269);
            }
         }
      }
      
      protected function §[%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         while(true)
         {
            this.§?!5§(true);
            while(_loc2_ || _loc1_)
            {
               while(_loc2_ || this)
               {
                  this.§"M§();
                  while(_loc2_)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §?!5§(enable:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc2_ || _loc3_)
         {
            while(true)
            {
               while(!(_loc3_ && this))
               {
                  (§5!M§.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
                  while(true)
                  {
                     for(; !(_loc3_ && enable); if(_loc3_ && _loc3_)
                     {
                        continue;
                     },(§5!M§.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable),§§goto(addr96))
                     {
                        (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
                        while(true)
                        {
                           while(true)
                           {
                              (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
                              §§goto(addr129);
                           }
                        }
                     }
                  }
               }
            }
         }
         addr129:
         loop6:
         do
         {
            loop7:
            while(!_loc3_)
            {
               continue loop3;
               loop8:
               while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     do
                     {
                        (§5!M§.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
                        continue loop8;
                     }
                     while(_loc3_ && _loc3_);
                     
                     continue loop6;
                  }
                  continue loop7;
               }
               continue loop4;
            }
            continue loop5;
         }
         while(_loc3_);
         
      }
      
      protected function §]B§(state:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  (§5!M§.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
                  while(true)
                  {
                     while(true)
                     {
                        (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                        loop4:
                        while(true)
                        {
                           do
                           {
                              (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                              loop6:
                              do
                              {
                                 loop7:
                                 while(_loc3_)
                                 {
                                    (§5!M§.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
                                    do
                                    {
                                       while(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                    while(!_loc3_);
                                    
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              while(_loc2_ && this);
                              
                           }
                           while(_loc2_ && this);
                           
                        }
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr86);
                     }
                  }
               }
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               this.§"M§();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(TweenManager.§8!X§);
                     if(_loc2_ && _loc1_)
                     {
                     }
                     §§push(TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25));
                     if(_loc2_)
                     {
                     }
                     §§pop().§9q§ = §§pop().§`!6§(§§pop(),TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_DarkBG") as §6#§).mClip,{"alpha":0},{"alpha":1},0.25));
                     addr166:
                     while(true)
                     {
                        continue loop1;
                     }
                     addr72:
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§push(this.§9q§);
                     if(_loc1_)
                     {
                        §§pop().play();
                        while(!(_loc2_ && this))
                        {
                           if(_loc1_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 §§goto(addr72);
                              }
                              else
                              {
                                 §§goto(addr166);
                              }
                           }
                           addr91:
                           while(true)
                           {
                              continue loop8;
                           }
                        }
                        addr56:
                        continue loop1;
                     }
                     while(true)
                     {
                        §§pop().onComplete = this.§ var§;
                        §§goto(addr91);
                        §§goto(addr84);
                     }
                     addr84:
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr88);
         }
      }
      
      protected function § var§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               mNextState = this.§>!U§();
               addr68:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr75:
            }
         }
         loop1:
         while(true)
         {
            while(true)
            {
               this.§"M§();
               while(_loc1_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  continue loop0;
               }
            }
            addr50:
         }
         while(true)
         {
            if(_loc4_ && this)
            {
               continue;
            }
            if(!(_loc4_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr50);
            }
            §§goto(addr46);
         }
         §§push(super.run(deltaTime));
         if(_loc3_ || superReturn)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(!_loc4_)
         {
            loop3:
            while(true)
            {
               §§push(superReturn);
               addr147:
               loop4:
               while(true)
               {
                  if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                  {
                     while(true)
                     {
                        if(mNextState.length <= 0)
                        {
                           return StateBase.STATE_STATUS_RUNNING;
                        }
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop3;
                        }
                        if(_loc3_)
                        {
                           continue;
                        }
                        continue loop4;
                     }
                     return StateBase.STATE_STATUS_COMPLETED;
                  }
                  addr131:
                  if(_loc4_ && deltaTime)
                  {
                  }
               }
            }
         }
         while(true)
         {
            §§push(superReturn);
            if(!(_loc4_ && deltaTime))
            {
               break;
            }
            §§goto(addr147);
         }
         return §§pop();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               super.deActivate();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     while(true)
                     {
                        this.§"M§();
                        loop4:
                        while(!_loc2_)
                        {
                           do
                           {
                              this.§]B§(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                              while(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr46);
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           while(!_loc1_);
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               super.cleanup();
               while(_loc1_)
               {
                  if(_loc1_)
                  {
                     return;
                     addr41:
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var soundsEnabled:Boolean = false;
         var particlesEnabled:Boolean = false;
         var bird:LevelSlingshotObject = null;
         if(_loc9_ || eventName)
         {
            loop0:
            while(true)
            {
               addr86:
               while(true)
               {
                  if(_loc9_)
                  {
                     if(_loc9_ || component)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               var _loc7_:* = eventName;
               if(!(_loc10_ && eventIndex))
               {
                  §§push("HELP");
                  if(_loc9_ || eventName)
                  {
                     if(_loc9_ || eventName)
                     {
                        addr534:
                        §§push(_loc7_);
                        if(!(_loc10_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc9_)
                              {
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    addr777:
                                 }
                              }
                              else
                              {
                                 addr602:
                                 §§push(2);
                                 if(!(_loc9_ || component))
                                 {
                                    addr677:
                                 }
                              }
                           }
                           else
                           {
                              §§push("RESTART_LEVEL");
                              if(_loc9_)
                              {
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(_loc7_);
                                    if(!_loc10_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc10_ && eventName))
                                          {
                                             §§push(1);
                                             if(!_loc10_)
                                             {
                                                addr779:
                                                loop2:
                                                while(true)
                                                {
                                                   loop19:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         if(_loc9_)
                                                         {
                                                            this.closePauseMenu();
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc10_ && this)
                                                                  {
                                                                     break loop19;
                                                                     addr352:
                                                                     addr335:
                                                                  }
                                                                  if(!(_loc10_ && eventIndex))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     mNextState = this.§`!L§();
                                                                     addr434:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        addr447:
                                                                        while(true)
                                                                        {
                                                                           addr439:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 StateLevelLoadClassic.§7!R§();
                                                                                 break loop19;
                                                                              }
                                                                              addr497:
                                                                              addr488:
                                                                              addr482:
                                                                              addr491:
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr504:
                                                            break;
                                                            addr504:
                                                         }
                                                         break;
                                                         addr428:
                                                      case 1:
                                                         mNextState = this.§%b§();
                                                         §§goto(addr497);
                                                         addr502:
                                                      case 2:
                                                         this.closePauseMenu();
                                                         break;
                                                         addr479:
                                                         addr474:
                                                         addr469:
                                                      case 3:
                                                         break;
                                                         addr466:
                                                      case 4:
                                                         addr452:
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_ || eventName)
                                                            {
                                                               SoundEngine.§;!8§();
                                                               §§goto(addr447);
                                                               addr461:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr502);
                                                            }
                                                            §§goto(addr497);
                                                         }
                                                         §§goto(addr488);
                                                      case 5:
                                                         addr418:
                                                         if(_loc9_ || eventIndex)
                                                         {
                                                            addr405:
                                                            soundsEnabled = !AngryBirdsFP11.§+i§();
                                                            if(_loc9_ || eventIndex)
                                                            {
                                                               addr396:
                                                               if(_loc9_)
                                                               {
                                                                  AngryBirdsFP11.§72§(soundsEnabled);
                                                                  addr369:
                                                                  if(!(_loc10_ && eventName))
                                                                  {
                                                                     if(!(_loc10_ && eventName))
                                                                     {
                                                                        addr355:
                                                                        if(_loc9_ || eventName)
                                                                        {
                                                                           §5!M§.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
                                                                           addr345:
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§goto(addr352);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr439);
                                                                           }
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr479);
                                                                     }
                                                                  }
                                                                  §§goto(addr434);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr452);
                                                               }
                                                            }
                                                            §§goto(addr474);
                                                            addr403:
                                                            addr404:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr466);
                                                         }
                                                         break;
                                                      case 6:
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && this))
                                                            {
                                                               §§push(§]!B§.§]!#§());
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_ || component)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           addr311:
                                                                           if(!(_loc10_ && component))
                                                                           {
                                                                              addr319:
                                                                              particlesEnabled = §§pop();
                                                                              loop13:
                                                                              for(; _loc9_ || this; loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ || eventIndex))
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §5!M§.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
                                                                                    while(!_loc10_)
                                                                                    {
                                                                                       if(_loc9_ || eventIndex)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§goto(addr504);
                                                                                    }
                                                                                    §§goto(addr428);
                                                                                    addr245:
                                                                                 }
                                                                              },§§goto(addr396))
                                                                              {
                                                                                 §]!B§.§^!Y§(particlesEnabled);
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              §§goto(addr491);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr403);
                                                                           }
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr404);
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            break;
                                                            if(!(_loc9_ || eventIndex))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc9_ || component)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  break loop19;
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr369);
                                                      case 7:
                                                         if(_loc9_)
                                                         {
                                                            if(!(_loc10_ && eventIndex))
                                                            {
                                                               do
                                                               {
                                                                  AngryBirdsFP11.§5V§.§>J§();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc10_ && eventIndex))
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                               }
                                                               while(false);
                                                               
                                                               break;
                                                            }
                                                            §§goto(addr405);
                                                         }
                                                         §§goto(addr335);
                                                   }
                                                   addr782:
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr677);
                                             }
                                          }
                                          else
                                          {
                                             addr700:
                                             §§push(5);
                                             if(_loc10_)
                                             {
                                             }
                                          }
                                          §§goto(addr779);
                                       }
                                       else
                                       {
                                          §§push("RESUME_LEVEL");
                                          if(_loc9_ || eventName)
                                          {
                                             if(_loc9_ || component)
                                             {
                                                §§push(_loc7_);
                                                if(_loc9_ || eventName)
                                                {
                                                   addr599:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr602);
                                                      }
                                                      else
                                                      {
                                                         addr669:
                                                         §§push(4);
                                                         if(!(_loc9_ || eventName))
                                                         {
                                                            addr739:
                                                         }
                                                         §§goto(addr779);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("END_LEVEL");
                                                      if(!(_loc10_ && component))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            addr622:
                                                            §§push(_loc7_);
                                                            if(!(_loc10_ && eventIndex))
                                                            {
                                                               addr630:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc10_ && eventName))
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§goto(addr779);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr739);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr700);
                                                                  }
                                                                  §§goto(addr779);
                                                               }
                                                               else
                                                               {
                                                                  §§push("MENU");
                                                                  if(!(_loc10_ && eventIndex))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 §§goto(addr669);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr731:
                                                                                 §§push(6);
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    §§goto(addr739);
                                                                                 }
                                                                                 §§goto(addr779);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("TOGGLE_SOUNDS");
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr681:
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    addr689:
                                                                                    §§push(_loc7_);
                                                                                    if(!(_loc10_ && component))
                                                                                    {
                                                                                       addr697:
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§goto(addr700);
                                                                                          }
                                                                                          §§goto(addr779);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("TOGGLE_PARTICLES");
                                                                                          if(!(_loc10_ && eventIndex))
                                                                                          {
                                                                                             addr712:
                                                                                             if(_loc9_ || eventIndex)
                                                                                             {
                                                                                                addr720:
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr723:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc10_ && eventIndex))
                                                                                                      {
                                                                                                         §§goto(addr731);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr763:
                                                                                                         §§push(7);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr779);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr777);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr779);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("FULLSCREEN_BUTTON");
                                                                                                      if(_loc9_ || eventIndex)
                                                                                                      {
                                                                                                         addr759:
                                                                                                         if(§§pop() === _loc7_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr763);
                                                                                                            }
                                                                                                         }
                                                                                                         else if(true)
                                                                                                         {
                                                                                                            §§goto(addr779);
                                                                                                            §§push(8);
                                                                                                         }
                                                                                                         §§goto(addr779);
                                                                                                      }
                                                                                                      §§goto(addr759);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr759);
                                                                                       }
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr712);
                                                                              }
                                                                              §§goto(addr720);
                                                                           }
                                                                           §§goto(addr779);
                                                                        }
                                                                        §§goto(addr723);
                                                                     }
                                                                     §§goto(addr689);
                                                                  }
                                                                  §§goto(addr758);
                                                               }
                                                            }
                                                            §§goto(addr697);
                                                         }
                                                         §§goto(addr759);
                                                      }
                                                      §§goto(addr622);
                                                   }
                                                   §§goto(addr779);
                                                }
                                             }
                                             §§goto(addr759);
                                          }
                                          §§goto(addr681);
                                       }
                                    }
                                    §§goto(addr599);
                                 }
                                 §§goto(addr689);
                              }
                              §§goto(addr712);
                           }
                           §§goto(addr779);
                        }
                        §§goto(addr630);
                     }
                     §§goto(addr720);
                  }
                  §§goto(addr534);
               }
               §§goto(addr731);
            }
         }
         §§goto(addr86);
      }
      
      protected function §>!U§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return StatePlay.STATE_NAME;
      }
      
      protected function §%b§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || this)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §`!L§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return StateLevelSelection.STATE_NAME;
      }
   }
}
