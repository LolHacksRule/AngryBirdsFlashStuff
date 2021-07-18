package §%w§
{
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §&!7§.§,!A§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§=X§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §@!?§.§1!C§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   
   public class §>d§ extends §;s§
   {
      
      private static const §]!Z§:Number = -250;
      
      public static const §9!P§:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!Z§ = -250;
         }
         do
         {
            §9!P§ = "PauseState";
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §7!G§:§&!!§ = null;
      
      public function §>d§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            §3t§ = new §'j§(this);
            do
            {
               §3t§.init(§0p§.§'! §.Views.View_LevelPause[0]);
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_)
         {
            super.activate();
         }
         while(true)
         {
            §§push(§9!'§.§7!Z§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  while(_loc2_)
                  {
                     §§push(§9!'§.§7!Z§);
                     while(true)
                     {
                        §§pop().start();
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
                  continue;
                  addr95:
               }
               loop2:
               while(true)
               {
                  this.§;W§();
                  do
                  {
                     this.§?<§();
                     loop4:
                     do
                     {
                        §3t§.getItemByName("Button_Help").setEnabled(§1!C§.§0!E§());
                        for(; !_loc3_; §3t§.getItemByName("Button_Help").setVisibility(§1!C§.§0!E§()),if(_loc2_)
                        {
                           continue loop4;
                        })
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr95);
                        }
                        continue loop2;
                     }
                     while(_loc3_);
                     
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  return;
               }
            }
            §§goto(addr99);
         }
      }
      
      private function §;W§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§7e§.§^"§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            if(_loc1_.indexOf("1-") == 0)
            {
               try
               {
                  var _loc2_:* = parseInt(_loc1_.substring(2));
                  if(_loc4_ || _loc1_)
                  {
                     §§push(4);
                     if(_loc4_ || _loc1_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc3_ && _loc3_)
                              {
                                 addr187:
                                 if(§§pop() === _loc2_)
                                 {
                                    addr189:
                                    §§push(4);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr197:
                                    }
                                 }
                                 else
                                 {
                                    §§push(5);
                                 }
                              }
                           }
                           else
                           {
                              addr144:
                              §§push(2);
                              if(_loc4_ || _loc2_)
                              {
                                 addr152:
                              }
                              else
                              {
                                 addr183:
                              }
                           }
                           addr202:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc1_ = "2-1";
                                 break;
                              case 1:
                                 _loc1_ = "2-2";
                                 break;
                              case 2:
                                 _loc1_ = "2-3";
                                 addr47:
                                 break;
                              case 3:
                                 _loc1_ = "2-4";
                                 break;
                              case 4:
                                 _loc1_ = "2-5";
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr47);
                           }
                           (§3t§.getItemByName("TextField_LevelName") as §[i§).§7t§.text = _loc1_;
                           if(!_loc3_)
                           {
                              (§3t§.getItemByName("Container_PauseMenu") as §1-§).x = §]!Z§;
                              loop0:
                              while(true)
                              {
                                 this.§2]§(false);
                                 while(true)
                                 {
                                    §9!'§.§`!@§.isPaused = true;
                                    loop2:
                                    while(!(_loc3_ && _loc2_))
                                    {
                                       §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!§#x§.§7!S§());
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§7!G§);
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop() != null)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§7!G§);
                                                   addr318:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr319:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr316:
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                this.§7!G§ = §';§.§%!O§.§4!;§(§';§.§%!O§.§set §(§3t§.getItemByName("Container_PauseMenu") as §1-§,{"x":0},null,0.25),§';§.§%!O§.§set §((§3t§.getItemByName("MovieClip_DarkBG") as §=X§).mClip,{"alpha":1},{"alpha":0},0.25));
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this.§7!G§);
                                                            loop9:
                                                            for(; _loc4_; §§push(this.§7!G§),if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                               break loop8;
                                                            })
                                                            {
                                                               §§pop().onComplete = this.§1!@§;
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop2;
                                                                  addr245:
                                                                  §§pop().play();
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr318);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr319);
                        }
                        else
                        {
                           §§push(5);
                           if(_loc4_ || _loc1_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(_loc3_ && _loc2_)
                                    {
                                       §§goto(addr187);
                                    }
                                 }
                                 §§goto(addr189);
                              }
                              else
                              {
                                 §§push(6);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          §§goto(addr189);
                                       }
                                    }
                                    else
                                    {
                                       §§push(7);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(3);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr202);
                                             }
                                             else
                                             {
                                                §§goto(addr189);
                                             }
                                          }
                                          else
                                          {
                                             §§push(8);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr187);
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr189);
                  addr35:
               }
               catch(error:Error)
               {
                  _loc2_ = error;
               }
            }
            §§goto(addr202);
         }
         §§goto(addr35);
      }
      
      private function §1!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2]§(true);
         }
      }
      
      private function §2]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§3t§.getItemByName("Button_Resume") as §0!@§).setEnabled(param1);
            while(true)
            {
               (§3t§.getItemByName("Button_Replay") as §0!@§).setEnabled(param1);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     (§3t§.getItemByName("Button_Menu") as §0!@§).setEnabled(param1);
                     do
                     {
                        (§3t§.getItemByName("Button_Help") as §0!@§).setEnabled(param1);
                        do
                        {
                           (§3t§.getItemByName("Button_Sound") as §0!@§).setEnabled(param1);
                           do
                           {
                              §3t§.getItemByName("Button_Help").setEnabled(§1!C§.§0!E§());
                           }
                           while(!(_loc3_ || this));
                           
                        }
                        while(_loc2_ && _loc3_);
                        
                     }
                     while(!_loc3_);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr107);
      }
      
      private function §0!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§7!G§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§7!G§);
                     addr131:
                     while(true)
                     {
                        §§pop().stop();
                        addr132:
                        while(true)
                        {
                        }
                     }
                  }
                  addr129:
               }
               addr72:
               addr49:
               while(true)
               {
                  this.§7!G§ = §';§.§%!O§.§4!;§(§';§.§%!O§.§set §(§3t§.getItemByName("Container_PauseMenu") as §1-§,{"x":§]!Z§},null,0.25),§';§.§%!O§.§set §((§3t§.getItemByName("MovieClip_DarkBG") as §=X§).mClip,{"alpha":0},{"alpha":1},0.25));
                  while(!(_loc2_ && this))
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                        addr45:
                     }
                  }
                  §§goto(addr132);
               }
               loop7:
               while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop0;
                  }
                  §§pop().onComplete = this.§7!^§;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        continue loop7;
                     }
                     §§goto(addr129);
                     addr33:
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().play();
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr131);
               }
               §§goto(addr72);
            }
         }
         while(true)
         {
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      private function §7!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            mNextState = StatePlay.§9!P§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     if(_loc3_ || param1)
                     {
                        if(_loc3_)
                        {
                           return §&c§.STATE_STATUS_COMPLETED;
                        }
                        addr86:
                        return _loc2_;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §&c§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr86);
         }
         §§goto(addr88);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            do
            {
               §9!'§.§`!@§.isPaused = false;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§&!3§ = null;
         var _loc7_:§9k§ = null;
         var _loc8_:* = param2;
         if(_loc11_ || param3)
         {
            if("HELP" === _loc8_)
            {
               if(!_loc10_)
               {
                  addr428:
                  §§push(0);
                  if(_loc10_ && this)
                  {
                     addr534:
                  }
               }
               else
               {
                  addr549:
                  §§push(9);
                  if(_loc11_)
                  {
                     addr552:
                  }
                  else
                  {
                     addr569:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc8_)
            {
               if(_loc11_ || this)
               {
                  §§push(1);
                  if(_loc10_)
                  {
                     §§goto(addr569);
                  }
               }
               else
               {
                  addr503:
                  §§push(5);
                  if(_loc11_)
                  {
                     addr506:
                  }
               }
            }
            else if("RESUME_LEVEL" === _loc8_)
            {
               if(_loc11_ || param2)
               {
                  §§push(2);
                  if(_loc10_ && this)
                  {
                     §§goto(addr569);
                  }
               }
               else
               {
                  addr526:
                  §§push(7);
                  if(_loc11_ || this)
                  {
                     §§goto(addr534);
                  }
                  else
                  {
                     §§goto(addr552);
                  }
               }
            }
            else if("END_LEVEL" === _loc8_)
            {
               if(_loc11_ || param1)
               {
                  §§push(3);
                  if(!_loc11_)
                  {
                     §§goto(addr506);
                  }
               }
               else
               {
                  addr540:
                  §§push(8);
                  if(_loc10_)
                  {
                     §§goto(addr569);
                  }
               }
            }
            else if("MENU" === _loc8_)
            {
               if(_loc11_)
               {
                  §§push(4);
                  if(_loc10_ && this)
                  {
                  }
                  §§goto(addr574);
               }
               else
               {
                  §§goto(addr549);
               }
            }
            else
            {
               if("TOGGLE_SOUNDS" === _loc8_)
               {
                  if(!_loc10_)
                  {
                     §§goto(addr503);
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc8_)
               {
                  if(_loc11_)
                  {
                     §§push(6);
                     if(_loc10_ && this)
                     {
                     }
                     §§goto(addr574);
                  }
                  else
                  {
                     §§goto(addr526);
                  }
               }
               else
               {
                  if("TOGGLE_FULLSCREEN" === _loc8_)
                  {
                     if(_loc11_)
                     {
                        §§goto(addr526);
                     }
                     else
                     {
                        §§goto(addr540);
                     }
                  }
                  else
                  {
                     if("BUTTON_NO" === _loc8_)
                     {
                        if(!_loc10_)
                        {
                           §§goto(addr540);
                        }
                     }
                     else if("BUTTON_YES" === _loc8_)
                     {
                        if(_loc11_)
                        {
                           §§goto(addr549);
                        }
                     }
                     else if("CHECKBOX_CHANGE" !== _loc8_)
                     {
                        addr574:
                        loop0:
                        while(true)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 this.§0!#§();
                                 if(_loc10_ && this)
                                 {
                                    addr137:
                                    this.§ A§();
                                    if(_loc11_)
                                    {
                                       addr344:
                                       break loop0;
                                    }
                                 }
                                 continue;
                              case 1:
                                 addr331:
                                 if((§7?§.§4!H§ as §<e§).§#n§())
                                 {
                                    break;
                                 }
                                 this.§ A§();
                                 addr315:
                                 break loop0;
                                 addr326:
                                 break;
                              case 2:
                                 this.§0!#§();
                                 loop7:
                                 while(true)
                                 {
                                    §7?§.§]!1§();
                                    addr312:
                                    while(_loc10_)
                                    {
                                       continue loop7;
                                    }
                                    break loop0;
                                 }
                                 break;
                              case 3:
                                 break loop0;
                              case 4:
                                 §§push(§7?§.§4!H§);
                                 if(!_loc10_)
                                 {
                                    addr295:
                                    §§push((§§pop() as §<e§).§#n§());
                                    if(!_loc10_)
                                    {
                                       if(§§pop())
                                       {
                                          addr298:
                                          if(!§;s§.sCheetosPopups.showPopup(§0!U§.§]k§))
                                          {
                                             addr304:
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             this.§?!§();
                                             addr308:
                                          }
                                       }
                                       else
                                       {
                                          this.§?!§();
                                          addr272:
                                       }
                                       addr257:
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr331);
                                 }
                                 §§goto(addr331);
                              case 5:
                                 addr263:
                                 _loc4_ = !§#x§.§7!S§();
                                 addr264:
                                 if(_loc11_)
                                 {
                                    §#x§.§<]§(_loc4_);
                                    if(_loc11_)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          §3t§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                          addr233:
                                          if(!(_loc10_ && param1))
                                          {
                                             if(!_loc10_)
                                             {
                                                break loop0;
                                             }
                                             §§goto(addr312);
                                          }
                                          else
                                          {
                                             §§goto(addr304);
                                          }
                                       }
                                       §§goto(addr308);
                                    }
                                    break loop0;
                                 }
                                 addr343:
                                 §§goto(addr315);
                                 addr343:
                                 addr262:
                              case 6:
                                 §§push(§7?§.§`!>§());
                                 if(_loc11_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc11_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          _loc5_ = §§pop();
                                          addr223:
                                          if(!_loc10_)
                                          {
                                             §7?§.§?B§(_loc5_);
                                             addr200:
                                             if(!_loc10_)
                                             {
                                                §3t§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                addr188:
                                                if(_loc11_ || this)
                                                {
                                                   break loop0;
                                                }
                                                §§goto(addr298);
                                                addr202:
                                             }
                                             this.§ A§();
                                             §§goto(addr343);
                                          }
                                          else
                                          {
                                             §§goto(addr272);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr295);
                                       }
                                       §§goto(addr315);
                                    }
                                    else
                                    {
                                       §§goto(addr262);
                                    }
                                 }
                                 §§goto(addr263);
                              case 7:
                                 break loop0;
                              case 8:
                                 if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                                 {
                                    addr176:
                                    sCheetosPopups.hidePopup();
                                    addr178:
                                    if(_loc10_)
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                                 else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
                                 {
                                    if(!_loc10_)
                                    {
                                       sCheetosPopups.hidePopup();
                                       if(_loc11_)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             addr117:
                                             break loop0;
                                          }
                                          §§goto(addr188);
                                       }
                                       break loop0;
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr117);
                              case 9:
                                 if(§;s§.sCheetosPopups.getCurrentPopupName() != §0!U§.RESTART_LEVEL)
                                 {
                                    if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(!_loc10_)
                                          {
                                             this.§?!§();
                                             if(!_loc10_)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      if(_loc11_ || this)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr117);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr344);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr326);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr315);
                                                }
                                                else
                                                {
                                                   addr126:
                                                   if(!_loc10_)
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr137);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr264);
                                                         }
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                }
                                                §§goto(addr176);
                                             }
                                             break loop0;
                                          }
                                          §§goto(addr200);
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr126);
                              case 10:
                                 _loc6_ = param3 as §&!3§;
                                 if(_loc11_ || param3)
                                 {
                                    §§push(§#x§.§=!!§);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§#x§.§=!!§.§9!E§);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().§9!E§ = §§pop();
                                       do
                                       {
                                          continue loop3;
                                       }
                                       while(!_loc11_);
                                       
                                       addr411:
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr375);
                           }
                           if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr263);
                        }
                        return;
                        §§push(11);
                     }
                     §§goto(addr574);
                  }
                  §§goto(addr574);
               }
               §§goto(addr574);
               if(!_loc10_)
               {
                  §§goto(addr569);
               }
            }
            §§goto(addr574);
         }
         §§goto(addr428);
      }
      
      private function § A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §[!X§.§]!J§();
            do
            {
               mNextState = §[!X§.§9!P§;
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §?!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §,!A§.§9!M§("levelComplete",§7e§.§^"§,false);
            if(_loc3_)
            {
               addr62:
               mNextState = §`L§.§9!P§;
            }
            return;
         }
         catch(e:Error)
         {
         }
         §§goto(addr62);
      }
      
      private function §?<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc3_ || _loc2_)
         {
            if(!(§7?§.§4!H§ as §<e§).§#n§())
            {
               _loc2_.visible = false;
               if(!_loc4_)
               {
                  addr60:
               }
               else
               {
                  addr87:
               }
               return;
            }
            if(_loc3_ || this)
            {
               _loc2_.visible = true;
            }
            §§goto(addr87);
         }
         §§goto(addr60);
      }
   }
}
