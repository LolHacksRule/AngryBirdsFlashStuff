package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §?A§.LevelSlingshotObject;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   
   public class StatePause extends StateBase
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var OFFSCREEN_X:Boolean = true;
         var STATE_NAME:Boolean = false;
         if(STATE_NAME)
         {
         }
         loop0:
         do
         {
            OFFSCREEN_X = -250;
            while(true)
            {
               while(OFFSCREEN_X)
               {
                  STATE_NAME = "PauseState";
                  if(!(STATE_NAME && OFFSCREEN_X))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(STATE_NAME);
         
      }
      
      protected var § in§:§9h§ = null;
      
      public function StatePause(initState:Boolean = false, name:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && name))
         {
            while(true)
            {
               while(true)
               {
                  §§goto(addr87);
               }
            }
         }
         addr87:
         while(true)
         {
            super(initState,name);
            while(_loc3_ && name)
            {
            }
            if(_loc4_ || name)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr78:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.init();
               while(true)
               {
                  addr94:
                  while(!_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            §^,§ = new §-!H§(this);
            loop4:
            while(true)
            {
               loop5:
               do
               {
                  §^,§.init(§3!5§.§4@§.Views.View_LevelPause[0]);
                  while(_loc2_)
                  {
                     if(!(_loc1_ && this))
                     {
                        continue loop5;
                     }
                  }
                  continue loop4;
               }
               while(_loc1_ && _loc1_);
               
               if(!_loc1_)
               {
                  break loop3;
               }
               §§goto(addr94);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            loop0:
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.openPauseMenu();
                     loop3:
                     while(!_loc1_)
                     {
                        loop4:
                        for(; _loc2_; if(_loc1_ && _loc1_)
                        {
                           continue;
                        },if(!_loc2_)
                        {
                           continue loop3;
                        })
                        {
                           §4!T§.§1t§.background.§1r§();
                           while(true)
                           {
                              continue loop0;
                              addr59:
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function setInitialButtonVisibilities() : void
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
               §^,§.getItemByName("Button_Help").setVisibility(false);
               loop1:
               for(; _loc1_ || this; while(!_loc2_)
               {
                  §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                  §§goto(addr60);
               })
               {
                  loop2:
                  while(true)
                  {
                     §^,§.getItemByName("Button_Sound").setVisibility(false);
                     while(true)
                     {
                        continue loop1;
                        addr62:
                        if(_loc1_ || this)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §87§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               loop1:
               for(§§push(this.§ in§); §§pop(); )
               {
                  continue loop0;
                  loop3:
                  while(true)
                  {
                     §§push(this.§ in§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§pop().stop();
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           this.§ in§ = null;
                           loop6:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop3;
                        }
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      protected function openPauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               if(LevelManager.§!=§ != null)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        (§^,§.getItemByName("TextField_LevelName") as UITextFieldRovio).§ ^§.text = LevelManager.§!=§;
                        while(true)
                        {
                           addr268:
                           while(true)
                           {
                              loop7:
                              while(_loc1_ || this)
                              {
                                 this.§ 9§(false);
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §4!T§.pause();
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §^,§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§%!D§());
                                             loop12:
                                             for(; !_loc2_; while(_loc1_ || _loc2_)
                                             {
                                                §§goto(addr73);
                                             })
                                             {
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                      addr194:
                                                   }
                                                   this.§87§();
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                   addr100:
                                                   if(_loc2_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§ in§);
                                                   while(true)
                                                   {
                                                      §§pop().onComplete = this.§'u§;
                                                      continue loop12;
                                                      §§goto(addr81);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  (§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = OFFSCREEN_X;
                  §§goto(addr265);
                  §§goto(addr268);
               }
            }
         }
         addr81:
         loop21:
         while(true)
         {
            §§push(this.§ in§);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().play();
               while(!(_loc2_ && this))
               {
                  if(_loc1_ || _loc1_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           break loop21;
                        }
                        addr98:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop11;
                           }
                           §§goto(addr100);
                        }
                        continue loop13;
                     }
                     continue;
                     continue;
                  }
                  continue loop2;
               }
               while(_loc1_)
               {
                  if(!_loc1_)
                  {
                     continue loop8;
                  }
                  if(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue loop21;
                     }
                     continue loop9;
                  }
                  §§goto(addr194);
                  §§goto(addr56);
               }
               addr56:
               continue loop12;
               addr73:
            }
            continue loop18;
         }
      }
      
      protected function §'u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               this.§ 9§(true);
            }
            addr83:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               this.§87§();
               while(_loc1_)
               {
                  if(_loc1_)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function § 9§(enable:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  (§^,§.getItemByName("Button_Resume") as UIButtonRovio).setEnabled(enable);
                  continue loop0;
                  while(!(_loc3_ && _loc3_))
                  {
                     (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setEnabled(enable);
                     loop6:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           while(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 (§^,§.getItemByName("Button_Help") as UIButtonRovio).setEnabled(enable);
                                 loop9:
                                 do
                                 {
                                    addr77:
                                    addr159:
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       (§^,§.getItemByName("Button_Sound") as UIButtonRovio).setEnabled(enable);
                                       while(_loc2_ || this)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             continue loop9;
                                          }
                                       }
                                    }
                                    addr164:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop6;
                                       }
                                       break;
                                       §§goto(addr77);
                                    }
                                    while(true)
                                    {
                                       (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setEnabled(enable);
                                       §§goto(addr159);
                                    }
                                 }
                                 while(_loc3_ && this);
                                 
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop6;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function §!!#§(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               (§^,§.getItemByName("Button_Resume") as UIButtonRovio).setComponentVisualState(state);
               while(!_loc3_)
               {
                  loop3:
                  while(!_loc3_)
                  {
                     (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(!_loc3_)
                        {
                           (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
                           loop6:
                           for(; !_loc3_; if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           },loop9:
                           while(true)
                           {
                              (§^,§.getItemByName("Button_Sound") as UIButtonRovio).setComponentVisualState(state);
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop9;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr91);
                                 addr66:
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop5;
                           })
                           {
                              loop7:
                              while(true)
                              {
                                 (§^,§.getItemByName("Button_Help") as UIButtonRovio).setComponentVisualState(state);
                                 addr91:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop4;
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           §§goto(addr66);
                        }
                        continue loop0;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            loop0:
            while(true)
            {
               this.§87§();
               addr175:
               addr97:
               while(true)
               {
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               loop7:
               while(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     §§push(this.§ in§);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().play();
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop7;
                        }
                        while(true)
                        {
                           §§push(this.§ in§);
                        }
                     }
                     while(true)
                     {
                        §§pop().onComplete = this.§,J§;
                        break loop7;
                        §§goto(addr88);
                     }
                     addr88:
                     continue loop0;
                  }
                  §§goto(addr175);
                  §§goto(addr170);
               }
               while(!_loc1_)
               {
                  §§goto(addr97);
               }
               §§goto(addr167);
            }
         }
         §§goto(addr170);
      }
      
      protected function §,J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         while(true)
         {
            mNextState = this.§[!C§();
            loop1:
            while(_loc1_)
            {
               do
               {
                  this.§87§();
                  while(!(_loc2_ && this))
                  {
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr61);
                  }
                  continue loop1;
               }
               while(!_loc1_);
               
               return;
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!(_loc3_ || this))
               {
               }
               if(_loc4_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(super.run(deltaTime));
               if(_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var superReturn:* = §§pop();
               if(_loc4_)
               {
               }
               loop3:
               while(true)
               {
                  §§push(superReturn);
                  loop4:
                  do
                  {
                     if(§§pop() != StateBase.STATE_STATUS_RUNNING)
                     {
                        if(_loc4_)
                        {
                        }
                        continue;
                     }
                     addr88:
                     while(true)
                     {
                        if(mNextState.length <= 0)
                        {
                           return StateBase.STATE_STATUS_RUNNING;
                        }
                        if(!_loc4_)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              continue loop4;
                           }
                        }
                        if(_loc3_)
                        {
                           return StateBase.STATE_STATUS_COMPLETED;
                        }
                        continue loop3;
                     }
                     continue loop3;
                  }
                  while(§§push(superReturn), !(_loc3_ || deltaTime));
                  
                  return §§pop();
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§87§();
                     while(_loc2_)
                     {
                        while(_loc2_ || _loc2_)
                        {
                           this.§!!#§(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                           while(_loc1_ && this)
                           {
                           }
                           if(!(_loc1_ && this))
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr84);
         }
         §§goto(addr63);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super.cleanup();
               while(!_loc1_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || eventIndex)
         {
         }
         var soundsEnabled:Boolean = false;
         var particlesEnabled:Boolean = false;
         var bird:LevelSlingshotObject = null;
         if(!(_loc9_ && component))
         {
            while(true)
            {
               while(_loc10_ || eventName)
               {
                  if(_loc9_)
                  {
                     continue;
                  }
                  var _loc7_:* = eventName;
                  if(!(_loc9_ && eventName))
                  {
                     §§push("HELP");
                     if(!(_loc9_ && this))
                     {
                        if(_loc10_ || this)
                        {
                           §§push(_loc7_);
                           if(_loc10_ || component)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§push(0);
                                    if(!_loc10_)
                                    {
                                       addr729:
                                    }
                                 }
                                 else
                                 {
                                    addr528:
                                    §§push(1);
                                    if(!(_loc10_ || this))
                                    {
                                       addr706:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("RESTART_LEVEL");
                                 if(!_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc10_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§goto(addr528);
                                             }
                                             else
                                             {
                                                addr554:
                                                §§push(2);
                                                if(!_loc9_)
                                                {
                                                   addr731:
                                                   loop2:
                                                   while(true)
                                                   {
                                                      loop20:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            if(_loc10_ || eventName)
                                                            {
                                                               this.closePauseMenu();
                                                               if(!(_loc9_ && component))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(0);
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           if(_loc10_ || eventName)
                                                                           {
                                                                              loop4:
                                                                              for each(bird in §4!T§.§1t§.slingshot.§+I§)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          AngryBirdsFP11.sUserProgress.§+!O§(bird.name,false);
                                                                                          while(_loc9_)
                                                                                          {
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             break;
                                                                                             addr134:
                                                                                          }
                                                                                          while(false)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                           }
                                                                           if(!_loc9_)
                                                                           {
                                                                              break loop20;
                                                                              addr471:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr427:
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              addr439:
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §4!T§.§]z§(particlesEnabled);
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 SoundEngine.§=O§();
                                                                                 addr419:
                                                                                 break;
                                                                                 addr419:
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!(_loc10_ || eventIndex))
                                                                                 {
                                                                                    break loop20;
                                                                                 }
                                                                                 addr424:
                                                                                 continue;
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 StateLevelLoadClassic.§3`§();
                                                                                 addr453:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    addr469:
                                                                                    while(true)
                                                                                    {
                                                                                       mNextState = this.§1!2§();
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr408);
                                                                        }
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr419);
                                                            }
                                                            §§goto(addr427);
                                                         case 1:
                                                            §§goto(addr469);
                                                         case 2:
                                                            this.closePauseMenu();
                                                            §§goto(addr427);
                                                            addr444:
                                                         case 3:
                                                            §§goto(addr424);
                                                         case 4:
                                                            §§goto(addr419);
                                                         case 5:
                                                            §§goto(addr389);
                                                         case 6:
                                                            §§goto(addr329);
                                                         case 7:
                                                            loop15:
                                                            for(; _loc10_ || component; while(true)
                                                            {
                                                               AngryBirdsFP11.§8R§.§,!f§();
                                                               if(!(_loc10_ || component))
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(_loc10_ || eventName)
                                                               {
                                                                  if(_loc10_ || eventName)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr444);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr349);
                                                               }
                                                            },§§goto(addr447))
                                                            {
                                                               if(_loc10_ || component)
                                                               {
                                                                  if(!(_loc9_ && eventIndex))
                                                                  {
                                                                     if(!(_loc9_ && component))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr381);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr317);
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                            §§goto(addr222);
                                                      }
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   addr723:
                                                   §§goto(addr731);
                                                }
                                                §§goto(addr731);
                                             }
                                          }
                                          else
                                          {
                                             §§push("RESUME_LEVEL");
                                             if(!_loc9_)
                                             {
                                                addr540:
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_ || component)
                                                         {
                                                            §§goto(addr554);
                                                         }
                                                         else
                                                         {
                                                            addr657:
                                                            §§push(5);
                                                            if(_loc10_ || eventIndex)
                                                            {
                                                            }
                                                            §§goto(addr731);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("END_LEVEL");
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(_loc10_ || eventIndex)
                                                            {
                                                               addr574:
                                                               §§push(_loc7_);
                                                               if(_loc10_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc9_ && eventName))
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc10_ || eventName)
                                                                        {
                                                                           §§goto(addr731);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr706);
                                                                        }
                                                                     }
                                                                     §§goto(addr731);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("MENU");
                                                                     if(!(_loc9_ && eventIndex))
                                                                     {
                                                                        if(!(_loc9_ && eventIndex))
                                                                        {
                                                                           addr610:
                                                                           §§push(_loc7_);
                                                                           if(!(_loc9_ && component))
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(4);
                                                                                    if(!(_loc9_ && component))
                                                                                    {
                                                                                       §§goto(addr731);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr723);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr720:
                                                                                    §§push(7);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§goto(addr723);
                                                                                    }
                                                                                    §§goto(addr731);
                                                                                 }
                                                                                 §§goto(addr731);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("TOGGLE_SOUNDS");
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    addr638:
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          addr649:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc10_ || eventIndex)
                                                                                             {
                                                                                                §§goto(addr657);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr720);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("TOGGLE_PARTICLES");
                                                                                             if(!(_loc9_ && eventName))
                                                                                             {
                                                                                                addr674:
                                                                                                if(_loc10_ || eventIndex)
                                                                                                {
                                                                                                   addr682:
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc9_ && eventName))
                                                                                                   {
                                                                                                      addr690:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(6);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr706);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr723);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr720);
                                                                                                         }
                                                                                                         §§goto(addr731);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push("FULLSCREEN_BUTTON");
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr711:
                                                                                                            if(§§pop() === _loc7_)
                                                                                                            {
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr720);
                                                                                                               }
                                                                                                            }
                                                                                                            else if(true)
                                                                                                            {
                                                                                                               §§goto(addr731);
                                                                                                               §§push(8);
                                                                                                            }
                                                                                                            §§goto(addr731);
                                                                                                         }
                                                                                                         §§goto(addr711);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr711);
                                                                                                }
                                                                                                §§goto(addr710);
                                                                                             }
                                                                                             §§goto(addr711);
                                                                                          }
                                                                                          §§goto(addr731);
                                                                                       }
                                                                                       §§goto(addr690);
                                                                                    }
                                                                                    §§goto(addr674);
                                                                                 }
                                                                                 §§goto(addr711);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr711);
                                                                     }
                                                                     §§goto(addr638);
                                                                  }
                                                                  §§goto(addr731);
                                                               }
                                                               §§goto(addr649);
                                                            }
                                                            §§goto(addr638);
                                                         }
                                                         §§goto(addr711);
                                                      }
                                                      §§goto(addr731);
                                                   }
                                                   §§goto(addr711);
                                                }
                                                §§goto(addr682);
                                             }
                                             §§goto(addr674);
                                          }
                                          §§goto(addr731);
                                       }
                                       §§goto(addr649);
                                    }
                                    §§goto(addr540);
                                 }
                                 §§goto(addr711);
                              }
                              §§goto(addr731);
                           }
                           §§goto(addr690);
                        }
                        §§goto(addr574);
                     }
                     §§goto(addr610);
                  }
                  §§goto(addr554);
                  addr87:
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function §[!C§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return StatePlay.STATE_NAME;
      }
      
      protected function §1!2§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §9!A§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return StateLevelSelection.STATE_NAME;
      }
   }
}
