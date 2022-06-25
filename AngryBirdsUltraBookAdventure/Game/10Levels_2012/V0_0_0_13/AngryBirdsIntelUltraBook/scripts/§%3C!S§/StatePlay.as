package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §##§.TutorialPopupManager;
   import §2!H§.LevelSlingshot;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §6b§.§3r§;
   import §7p§.GoogleAnalyticsTracker;
   import §7p§.Integer;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §9m§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const SCORE_SPEED:int = 50;
      
      protected static const MIGHTY_EAGLE_BUTTON_VISIBLE:String = "MightyEagleButtonVisible";
      
      protected static const MIGHTY_EAGLE_BUTTON_PREPARE_HIDE:String = "MightyEagleButtonPrepareHide";
      
      protected static const MIGHTY_EAGLE_BUTTON_HIDE:String = "MightyEagleButtonHide";
      
      {
         var STATE_NAME:Boolean = true;
         var SCORE_SPEED:Boolean = false;
         if(STATE_NAME || StatePlay)
         {
            while(true)
            {
               STATE_NAME = "StatePlay";
               addr102:
               while(true)
               {
                  while(true)
                  {
                     SCORE_SPEED = 50;
                     while(!SCORE_SPEED)
                     {
                        loop4:
                        while(STATE_NAME)
                        {
                           MIGHTY_EAGLE_BUTTON_VISIBLE = "MightyEagleButtonVisible";
                           while(true)
                           {
                              addr75:
                              while(!SCORE_SPEED)
                              {
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            MIGHTY_EAGLE_BUTTON_PREPARE_HIDE = "MightyEagleButtonPrepareHide";
            loop8:
            while(!SCORE_SPEED)
            {
               while(true)
               {
                  if(STATE_NAME)
                  {
                     if(!SCORE_SPEED)
                     {
                        if(!SCORE_SPEED)
                        {
                           if(STATE_NAME)
                           {
                              continue;
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr102);
                     }
                     break;
                  }
                  continue loop8;
               }
               §§goto(addr82);
            }
            §§goto(addr75);
         }
      }
      
      protected var §=!T§:Integer;
      
      protected var §+J§:§!T§;
      
      protected var §9&§:String;
      
      protected var §7w§:Boolean;
      
      private var §`!I§:Vector.<int>;
      
      private var §"g§:Boolean;
      
      private var §?>§:Boolean;
      
      public function StatePlay(initState:Boolean = true, name:String = "StatePlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || initState)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§=!T§ = new Integer();
                     loop3:
                     while(_loc3_)
                     {
                        loop4:
                        while(true)
                        {
                           this.§`!I§ = new Vector.<int>(32);
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 super(initState,name);
                                 loop7:
                                 for(; !_loc4_; while(!(_loc4_ && initState))
                                 {
                                    this.§`!I§[8] = 5000;
                                    §§goto(addr140);
                                    §§goto(addr85);
                                 })
                                 {
                                    while(true)
                                    {
                                       this.§`!I§[3] = 5000;
                                       loop9:
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.§`!I§[7] = 5000;
                                             loop11:
                                             while(!_loc4_)
                                             {
                                                continue loop7;
                                                addr123:
                                                if(_loc3_ || name)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr85:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr140:
                                                      while(!_loc4_)
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§`!I§[9] = 5000;
                                                            addr116:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                      addr67:
                                                      continue loop3;
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             continue loop9;
                                             if(!(_loc4_ && name))
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
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
         §§goto(addr164);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  addr107:
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     continue loop1;
                  }
               }
               addr41:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               return;
               addr58:
            }
         }
         while(true)
         {
            loop5:
            while(_loc1_)
            {
               §5!M§.init(§>!^§.§8'§.Views.View_LevelPlay[0]);
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop5;
               }
               §§goto(addr107);
            }
            §§goto(addr97);
         }
         §§goto(addr58);
      }
      
      protected function §+!h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
      }
      
      private function §^!O§(e:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(true)
               {
                  (§5!M§.getItemByName("TextField_METimer") as UITextFieldRovio).setVisibility(false);
                  while(_loc3_)
                  {
                     if(_loc3_)
                     {
                        return;
                        addr61:
                     }
                  }
               }
            }
            addr91:
         }
         while(true)
         {
            trace("Hiding Mighty eagle timer");
            while(true)
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr91);
            }
         }
         §§goto(addr61);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               SoundEngine.§;!8§();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.levelStarted();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(§5!M§.getItemByName("Button_MightyEagle"))
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           addr166:
                           addr166:
                           while(!_loc2_)
                           {
                              §5!M§.getItemByName("Button_MightyEagle").setVisibility(true);
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    addr113:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop4;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           §§push(SoundEngine);
                           §§push("LevelStartsBirdsMilitary");
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() + (1 + int(Math.random() * 2)));
                           }
                           §§pop().§9!X§(§§pop());
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 this.initActivation();
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr71:
                                    if(!(_loc2_ && this))
                                    {
                                       break loop6;
                                    }
                                 }
                                 §§goto(addr124);
                              }
                           }
                           if(_loc1_)
                           {
                              return;
                           }
                           §§goto(addr113);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               super.activate();
               while(!(_loc1_ && this))
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §5!M§.getItemByName("TextField_METimer").setVisibility(false);
            }
            addr132:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               §5!M§.getItemByName("Container_MEScore").setVisibility(false);
               addr118:
               while(true)
               {
                  continue loop2;
               }
            }
         }
      }
      
      protected function initActivation() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         var avatar:Bitmap = null;
         var mcContainer:MovieClip = null;
         var scale:Number = NaN;
         if(_loc6_ || this)
         {
            if(!_loc5_)
            {
               this.§=!T§.assign(0);
               if(_loc6_ || avatar)
               {
                  if(!(_loc5_ && mcContainer))
                  {
                     this.updateCurrentScore(0);
                     while(true)
                     {
                        while(true)
                        {
                           this.initMightyEagleButton();
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!(_loc5_ && mcContainer))
                                 {
                                    if(StateStart.§"!,§ == null)
                                    {
                                       break;
                                    }
                                    if(!(_loc6_ || mcContainer))
                                    {
                                       return;
                                    }
                                    addr374:
                                    addr374:
                                    continue;
                                 }
                                 continue loop6;
                              }
                              this.§9&§ = MIGHTY_EAGLE_BUTTON_VISIBLE;
                              if(_loc6_)
                              {
                                 §§goto(addr398);
                              }
                              §§goto(addr396);
                           }
                        }
                     }
                     addr124:
                  }
                  §§goto(addr374);
               }
               §§goto(addr398);
            }
            §§goto(addr374);
         }
         §§goto(addr124);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               while(true)
               {
                  loop2:
                  while(_loc1_)
                  {
                     (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!(_loc1_ || this))
                              {
                                 continue loop2;
                              }
                              §§goto(addr53);
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     (§5!M§.getItemByName("Button_Pause") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           this.deactivateMightyEagleButton();
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 loop7:
                                 for(§§push(this.§+J§); §§pop() != null; §§push(this.§+J§),if(_loc1_ || this)
                                 {
                                    §§pop().stop();
                                    continue loop5;
                                 })
                                 {
                                    while(true)
                                    {
                                       addr117:
                                       while(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr28:
                                 return;
                                 addr59:
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       while(!(_loc2_ && this))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§goto(addr59);
                                          }
                                          else
                                          {
                                             §§goto(addr116);
                                          }
                                       }
                                       while(!_loc2_)
                                       {
                                          this.§+J§ = null;
                                          §§goto(addr43);
                                       }
                                       addr43:
                                       §§goto(addr117);
                                       addr79:
                                    }
                                    §§goto(addr28);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr79);
            }
         }
         §§goto(addr76);
      }
      
      protected function §^!7§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || sum)
         {
         }
         var sum:* = 0;
         var i:* = 0;
         var start:* = 0;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               §§push(this.§"g§);
               if(_loc5_ || sum)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(!_loc5_)
               {
               }
               while(true)
               {
                  while(_loc5_)
                  {
                     continue loop0;
                     addr332:
                     if(_loc4_ && i)
                     {
                        continue;
                     }
                     loop30:
                     for(; !(_loc4_ && start); i = §§pop(),if(_loc4_ && i)
                     {
                        continue;
                     },addr247:,§§push(i),loop15:
                     while(§§pop() >= this.§`!I§.length)
                     {
                        while(true)
                        {
                           addr219:
                           §§push(sum);
                           if(!_loc5_)
                           {
                              continue loop15;
                           }
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 addr225:
                                 if(_loc5_ || i)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    §§goto(addr225);
                                 }
                                 addr257:
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                              }
                           }
                           while(!_loc4_)
                           {
                              if(_loc4_ && start)
                              {
                                 addr275:
                                 §§push(int(§§pop() + this.§`!I§[i]));
                                 break;
                              }
                              i = §§pop();
                              §§goto(addr247);
                           }
                           sum = §§pop();
                           while(true)
                           {
                              §§goto(addr257);
                              §§goto(addr282);
                           }
                           addr282:
                        }
                        §§push(Boolean(§§pop() % 1000));
                        loop17:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc5_ || start)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              loop18:
                              while(true)
                              {
                                 §§pop();
                                 addr246:
                                 addr202:
                                 §§push(int(sum / 1000) == 25);
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       continue loop18;
                                    }
                                    continue loop17;
                                 }
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           addr214:
                           while(§§pop())
                           {
                              loop23:
                              while(true)
                              {
                                 loop24:
                                 while(true)
                                 {
                                    this.§"g§ = true;
                                    addr193:
                                    while(true)
                                    {
                                       addr167:
                                       if(!(_loc5_ || start))
                                       {
                                          continue loop24;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop23;
                                       }
                                       if(!_loc4_)
                                       {
                                          GoogleAnalyticsTracker.§1`§(GoogleAnalyticsTracker.§-!W§,LevelManager.§var§);
                                          while(_loc4_ && sum)
                                          {
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr272);
                                       }
                                       §§goto(addr254);
                                       continue loop24;
                                    }
                                    break loop0;
                                 }
                              }
                           }
                           break loop0;
                        }
                        addr254:
                     },§§goto(addr275),§§push(sum))
                     {
                        §§push(0);
                        if(!(_loc5_ || sum))
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                              continue;
                           }
                           addr323:
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        while(true)
                        {
                           sum = §§pop();
                           break loop30;
                        }
                     }
                     while(!(_loc4_ && start))
                     {
                        §§goto(addr332);
                     }
                     while(true)
                     {
                        §§goto(addr323);
                        §§goto(addr325);
                     }
                     addr325:
                  }
               }
            }
            while(true)
            {
               §§push(this.§?>§);
               if(_loc5_)
               {
                  if(_loc5_ || sum)
                  {
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           while(!_loc4_)
                           {
                              loop5:
                              while(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(int(getTimer()));
                                                if(_loc5_)
                                                {
                                                   start = §§pop();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(getTimer() - start);
                                                         if(_loc4_ && sum)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= 1000)
                                                         {
                                                            if(!(_loc4_ && sum))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr246);
                                                               }
                                                            }
                                                            if(!(_loc4_ && this))
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         continue loop7;
                                                         addr100:
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                }
                                                §§goto(addr219);
                                             }
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr287);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr193);
                        }
                        break;
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr205);
               }
               §§goto(addr214);
            }
            return;
         }
         while(true)
         {
            §§goto(addr352);
         }
      }
      
      protected function §'!$§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  continue loop0;
               }
            }
            addr46:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         var score:int = §-;§.getScore();
         if(_loc4_ || this)
         {
         }
         §§push(this.§=!T§.getValue());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var scoreVisible:* = §§pop();
         if(_loc4_)
         {
            loop3:
            while(true)
            {
               §§push(scoreVisible < score);
               if(!(_loc3_ && score))
               {
                  §§push(Boolean(§§pop()));
               }
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(this.§"g§);
                           if(_loc4_ || scoreVisible)
                           {
                              continue loop5;
                           }
                           addr148:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop6;
                              }
                              loop7:
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§?>§ = true;
                                    while(_loc4_)
                                    {
                                       if(!(_loc3_ && score))
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                break loop8;
                                             }
                                             continue loop8;
                                          }
                                          continue;
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr80);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr148);
                  }
               }
            }
         }
         addr80:
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && this))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     §§push(TutorialPopupManager.isOpen);
                     addr135:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     if(_loc4_ || deltaTime)
                     {
                        continue loop0;
                     }
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  (§5!M§.getItemByName("Container_MEScore") as UIContainerRovio).setVisibility(true);
                  while(_loc4_)
                  {
                     if(!(_loc3_ && superReturn))
                     {
                        §§goto(addr77);
                     }
                     else
                     {
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr115);
               }
            }
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               this.§9&§ = MIGHTY_EAGLE_BUTTON_PREPARE_HIDE;
               while(_loc2_ || _loc1_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               trace("Hiding ME");
               while(true)
               {
                  continue loop0;
                  loop8:
                  while(_loc2_ || _loc2_)
                  {
                     loop9:
                     while(true)
                     {
                        this.§+J§ = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_MightyEagle").mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },null,0.5);
                        addr148:
                        loop17:
                        while(true)
                        {
                           loop18:
                           while(true)
                           {
                              loop10:
                              while(true)
                              {
                                 this.§9&§ = MIGHTY_EAGLE_BUTTON_HIDE;
                                 loop11:
                                 while(true)
                                 {
                                    addr112:
                                    loop12:
                                    while(_loc2_ || this)
                                    {
                                       §§push(this.§+J§);
                                       loop13:
                                       while(true)
                                       {
                                          §§pop().onComplete = this.onHideMightyEagle;
                                          loop14:
                                          while(!_loc1_)
                                          {
                                             loop15:
                                             while(_loc2_)
                                             {
                                                addr81:
                                                if(!(_loc1_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop0;
                                                }
                                                addr165:
                                                while(true)
                                                {
                                                   §§push(this.§+J§);
                                                   addr152:
                                                   while(true)
                                                   {
                                                      if(§§pop() == null)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                   §§goto(addr81);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop18;
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop18;
                                             }
                                             continue loop9;
                                          }
                                          continue loop11;
                                       }
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       addr44:
                                       if(_loc2_ || this)
                                       {
                                          return;
                                       }
                                       addr213:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             break loop12;
                                          }
                                          break;
                                          §§goto(addr44);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr182);
                                       }
                                       addr182:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr165);
                                       §§goto(addr112);
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
         §§goto(addr148);
      }
      
      protected function onHideMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.§+J§ = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_MightyEagle").mClip,{
                  "scaleX":0,
                  "scaleY":0
               },null,0.5);
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§+J§.play();
                     loop3:
                     while(true)
                     {
                        addr78:
                        while(_loc1_)
                        {
                           this.§9&§ = MIGHTY_EAGLE_BUTTON_HIDE;
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  addr43:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         while(true)
         {
            if(_loc1_ || this)
            {
               if(!_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr78);
            }
            §§goto(addr66);
         }
         §§goto(addr60);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               if(!§]!B§.§>F§.objects.mMightyEagleAdded)
               {
                  §§push(StateLevelEndRio.STATE_NAME);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               addr75:
               while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(StateLevelEndEagle.STATE_NAME);
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      protected function §%b§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return StateLevelEndFailRio.STATE_NAME;
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     super.keyDown(e);
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  var _loc2_:* = e.keyCode;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        §§push(82);
                        if(_loc3_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(!(_loc4_ && e))
                              {
                                 addr137:
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr143:
                                 §§push(1);
                                 if(!(_loc4_ && this))
                                 {
                                    addr151:
                                 }
                              }
                              §§goto(addr153);
                           }
                           if(false)
                           {
                              §§goto(addr143);
                           }
                           else
                           {
                              §§push(1);
                           }
                           addr153:
                           switch(§§pop())
                           {
                              case 0:
                                 StateLevelLoadClassic.§7!R§();
                                 loop3:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       addr46:
                                       while(true)
                                       {
                                          mNextState = this.§%b§();
                                          while(_loc3_)
                                          {
                                             if(!(_loc4_ && e))
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                           }
                           return;
                           §§goto(addr143);
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr137);
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && _loc3_))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr158);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || eventIndex)
         {
         }
         if(_loc5_)
         {
         }
         while(true)
         {
            loop1:
            for(; !(_loc5_ && component); loop3:
            for(; !(_loc5_ && eventName); while(_loc6_ || this)
            {
               loop6:
               do
               {
                  §§push(eventIndex);
                  loop7:
                  while(true)
                  {
                     §§push(UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN);
                     addr229:
                     while(§§pop() != §§pop())
                     {
                        continue loop7;
                     }
                     continue loop6;
                  }
               }
               while(_loc5_ && component);
               
               §§goto(addr238);
            })
            {
               §§push(component is UIButtonRovio);
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop3;
                  }
                  addr144:
                  var _loc4_:* = eventName;
                  if(!_loc5_)
                  {
                     §§push("CLOSE_TUTORIAL");
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr425);
                                 }
                                 else
                                 {
                                    §§goto(addr325);
                                 }
                              }
                              else
                              {
                                 §§push("PAUSE");
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && eventIndex))
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_ || this)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr325:
                                                §§push(1);
                                                if(!_loc6_)
                                                {
                                                }
                                             }
                                             §§goto(addr425);
                                          }
                                          else
                                          {
                                             §§push("RESTART_LEVEL");
                                             if(_loc6_)
                                             {
                                                addr332:
                                                if(_loc6_ || component)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc5_ && eventIndex))
                                                   {
                                                      addr348:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_ || component)
                                                         {
                                                            addr356:
                                                            §§push(2);
                                                            if(_loc6_ || component)
                                                            {
                                                               §§goto(addr425);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr380);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr404:
                                                            §§push(4);
                                                            if(!(_loc6_ || eventName))
                                                            {
                                                               addr423:
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      else
                                                      {
                                                         §§push("MIGHTY_EAGLE");
                                                         if(_loc5_)
                                                         {
                                                         }
                                                         addr401:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr404);
                                                            }
                                                            else
                                                            {
                                                               addr415:
                                                               §§push(5);
                                                               if(!(_loc5_ && eventIndex))
                                                               {
                                                                  §§goto(addr423);
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr415);
                                                            }
                                                            else
                                                            {
                                                               addr425:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     TutorialPopupManager.§<Z§();
                                                                     addr148:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc6_ || eventName))
                                                                        {
                                                                           §§goto(addr148);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr143:
                                                                     §§goto(addr143);
                                                                  case 1:
                                                                     mNextState = this.§@!E§();
                                                                     break;
                                                                     addr114:
                                                                     addr120:
                                                                  case 2:
                                                                     StateLevelLoadClassic.§7!R§();
                                                                     addr93:
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        mNextState = StateLevelLoadClassic.STATE_NAME;
                                                                        break;
                                                                        addr90:
                                                                        addr83:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr114);
                                                                     }
                                                                     break;
                                                                     addr111:
                                                                     addr106:
                                                                  case 3:
                                                                     addr78:
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr111);
                                                                     break;
                                                                  case 4:
                                                                     addr64:
                                                                     if(!(_loc5_ && component))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr51:
                                                                           AngryBirdsFP11.§5V§.§>J§();
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc6_ || eventName)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr51);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr120);
                                                                                    }
                                                                                    §§goto(addr106);
                                                                                 }
                                                                                 §§goto(addr90);
                                                                              }
                                                                              §§goto(addr83);
                                                                           }
                                                                           §§goto(addr64);
                                                                        }
                                                                        §§goto(addr93);
                                                                     }
                                                                     §§goto(addr78);
                                                               }
                                                               return;
                                                               §§push(5);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                   }
                                                   §§goto(addr401);
                                                }
                                             }
                                             if(_loc6_)
                                             {
                                                addr371:
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(3);
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr380);
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr404);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("FULLSCREEN_BUTTON");
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr389:
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr425);
                                                }
                                                §§goto(addr401);
                                             }
                                             §§goto(addr389);
                                          }
                                       }
                                       §§goto(addr348);
                                    }
                                    §§goto(addr389);
                                 }
                                 §§goto(addr401);
                              }
                              §§goto(addr425);
                           }
                           §§goto(addr401);
                        }
                        §§goto(addr371);
                     }
                     §§goto(addr332);
                  }
                  §§goto(addr356);
               }
            })
            {
               while(true)
               {
                  continue loop1;
               }
            }
         }
      }
      
      protected function §@!E§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return StatePause.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         while(true)
         {
            loop1:
            while(_loc3_ || meScore)
            {
               loop2:
               do
               {
                  §]!B§.§>F§.useMightyEagle();
                  while(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               §§push(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§));
               if(_loc3_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               var meScore:* = §§pop();
               if(!(_loc2_ && _loc3_))
               {
                  loop4:
                  while(true)
                  {
                     §5!M§.setText(meScore.toString() + "%","TextField_MEPercentage");
                     while(true)
                     {
                        continue loop4;
                        loop9:
                        while(!_loc2_)
                        {
                           this.hideMightyEagleButton();
                           while(_loc2_ && _loc3_)
                           {
                           }
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 return;
                                 addr137:
                              }
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr139);
            }
         }
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§'!$§();
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        if(!(_loc3_ && deltaTime))
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr70);
      }
   }
}
