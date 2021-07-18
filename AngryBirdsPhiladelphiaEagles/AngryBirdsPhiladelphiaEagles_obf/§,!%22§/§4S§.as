package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §'K§.§3C§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§;!P§;
   import §^]§.§`!K§;
   import flash.text.TextFieldAutoSize;
   
   public class §4S§ extends §="§
   {
       
      
      public function §4S§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §&K§ = true;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §0q§ = new §`o§(this);
               while(!_loc3_)
               {
                  §0q§.init(§`Z§.§5c§.Views.View_FacebookLevelPause[0]);
                  if(_loc2_ || _loc3_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc1_:§@4§ = §0q§.getItemByName("TextField_ChapterName") as §@4§;
            if(_loc2_ || _loc3_)
            {
               _loc1_.§!!@§.autoSize = TextFieldAutoSize.CENTER;
            }
            return;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            do
            {
               (§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip.alpha = 0;
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§@4§ = null;
         var _loc2_:* = null;
         if(§`!K§.§5g§ != null)
         {
            _loc1_ = §0q§.getItemByName("TextField_ChapterName") as §@4§;
            if(_loc4_)
            {
               §§push(§`!K§.§]V§().writtenName);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
               }
               loop0:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop3:
                           for(; _loc4_ || _loc1_; if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           },§§goto(addr63))
                           {
                              _loc1_.§!!@§.text = §`!K§.§]V§().writtenName;
                              loop4:
                              while(true)
                              {
                                 addr37:
                                 addr63:
                                 addr97:
                                 while(true)
                                 {
                                    (§0q§.getItemByName("TextField_LevelName") as §@4§).§!!@§.text = §;!P§.§[e§(§`!K§.§5g§);
                                    if(_loc4_ || this)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 addr63:
                                 while(false)
                                 {
                                    continue loop2;
                                 }
                                 §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§5e§());
                                 if(_loc4_ || _loc2_)
                                 {
                                    (§0q§.getItemByName("Container_PauseMenu") as §[Q§).x = §="§.OFFSCREEN_X;
                                    this.setPauseMenuButtonsEnabled(false);
                                    loop7:
                                    while(true)
                                    {
                                       §#! §.pause();
                                       if(§0]§ != null)
                                       {
                                          while(true)
                                          {
                                             §0]§.stop();
                                             addr212:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr210:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":0},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":1},{"alpha":0},0.25));
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §0]§.onComplete = §>!G§;
                                                while(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                   §0]§.play();
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr37);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr63);
         }
         §§goto(addr97);
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§0q§.getItemByName("Button_Resume") as §^'§).setEnabled(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setEnabled(param1);
               loop1:
               while(_loc3_ || param1)
               {
                  (§0q§.getItemByName("Button_Menu") as §^'§).setEnabled(param1);
                  while(true)
                  {
                     (§0q§.getItemByName("Button_Sound") as §^'§).setEnabled(param1);
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§0q§.getItemByName("Button_Resume") as §^'§).setComponentVisualState(param1);
            while(true)
            {
               (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
               loop1:
               for(; _loc3_ || _loc3_; while(!(_loc2_ && this))
               {
                  (§0q§.getItemByName("Button_Sound") as §^'§).setComponentVisualState(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§0]§ != null)
            {
               if(_loc2_)
               {
                  addr110:
                  §0]§.stop();
               }
               while(true)
               {
               }
               addr112:
            }
            while(true)
            {
               §0]§ = §3C§.§>o§.§=!3§(§3C§.§>o§.§<t§(§0q§.getItemByName("Container_PauseMenu") as §[Q§,{"x":OFFSCREEN_X},null,0.25),§3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_DarkBG") as §!o§).mClip,{"alpha":0},{"alpha":1},0.25));
               while(_loc2_)
               {
                  §0]§.onComplete = §3h§;
                  do
                  {
                     §0]§.play();
                  }
                  while(_loc1_ && _loc1_);
                  
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
               §§goto(addr112);
            }
         }
         §§goto(addr110);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = param2;
         if(_loc6_ || this)
         {
            §§push("MENU");
            if(!(_loc7_ && param2))
            {
               §§push(_loc5_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param2)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr182:
                        §§push(1);
                        if(_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("TOGGLESOUND");
                     if(!(_loc7_ && this))
                     {
                        addr171:
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || param2)
                              {
                                 §§goto(addr182);
                              }
                              addr197:
                              loop5:
                              switch(§§pop())
                              {
                                 case 0:
                                    mNextState = §@f§.§-A§;
                                    break;
                                 case 1:
                                    §§push(AngryBirdsFP11.§5e§());
                                    if(!_loc7_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    _loc4_ = §§pop();
                                    addr109:
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    AngryBirdsFP11.§6r§(_loc4_);
                                    do
                                    {
                                       §!D§.§#!O§(§!D§.§8T§,int(_loc4_));
                                       if(!(_loc6_ || param2))
                                       {
                                          break;
                                       }
                                       §0q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                    }
                                    while(_loc7_);
                                    
                                    addr199:
                                    return;
                                    addr111:
                                    break;
                                 case 2:
                                    §#! §.§`'§.§4-§();
                                    loop3:
                                    while(true)
                                    {
                                       mNextState = §5!'§();
                                       loop4:
                                       while(true)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             addr51:
                                             loop0:
                                             while(true)
                                             {
                                                §-O§.§8!5§();
                                                addr34:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr199);
                                                   continue loop0;
                                                }
                                                §§goto(addr109);
                                             }
                                             addr31:
                                          }
                                          else
                                          {
                                             §§goto(addr109);
                                          }
                                          §§goto(addr111);
                                       }
                                       break loop5;
                                    }
                                    break;
                                 default:
                                    super.uiInteractionHandler(param1,param2,param3);
                                    if(!_loc7_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr31);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr34);
                              }
                              §§goto(addr199);
                           }
                           else
                           {
                              addr188:
                              if("RESTART_LEVEL" !== _loc5_)
                              {
                                 §§goto(addr197);
                                 §§push(3);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr197);
               }
               §§goto(addr188);
            }
            §§goto(addr171);
         }
         §§goto(addr182);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
         }
         while(§0]§)
         {
            if(!_loc4_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §0]§.updateState();
            }
            break;
         }
      }
   }
}
