package §<!U§
{
   import § !+§.§0Z§;
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§,F§;
   import §+a§.§8!I§;
   import §4!6§.§,Y§;
   import §8!8§.§&Q§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §9N§.§8'§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   
   public class § !#§ extends §]u§
   {
      
      private static const §<;§:Number = -250;
      
      public static const §`O§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<;§ = -250;
         }
         do
         {
            §`O§ = "PauseState";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §+9§:§3!$§ = null;
      
      public function § !#§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §"c§ = new §,!N§(this);
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            §"c§.init(§@]§.§3!6§.Views.View_LevelPause[0]);
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§0Z§.§4J§);
                        addr120:
                        while(true)
                        {
                           §§pop().start();
                           addr121:
                           while(true)
                           {
                           }
                        }
                        loop7:
                        while(_loc3_ || _loc1_)
                        {
                           §"c§.getItemByName("Button_Help").setVisibility(§,F§.§4V§());
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              addr47:
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 addr96:
                                 while(true)
                                 {
                                    this.§;z§();
                                    addr85:
                                    while(_loc3_ || _loc1_)
                                    {
                                       §"c§.getItemByName("Button_Help").setEnabled(§,F§.§4V§());
                                       continue loop7;
                                    }
                                    §§goto(addr121);
                                    §§goto(addr47);
                                 }
                                 addr96:
                              }
                              return;
                           }
                           §§goto(addr85);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§+X§();
                     §§goto(addr96);
                     §§goto(addr121);
                  }
               }
               §§goto(addr120);
            }
         }
         §§goto(addr96);
      }
      
      private function §+X§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§[!!§.§7!F§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            if(_loc1_.indexOf("1-") == 0)
            {
               try
               {
                  var _loc2_:* = parseInt(_loc1_.substring(2));
                  if(_loc3_)
                  {
                     §§push(4);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() === _loc2_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§push(0);
                              if(!(_loc3_ || _loc2_))
                              {
                                 addr115:
                              }
                           }
                           else
                           {
                              addr133:
                              §§push(2);
                              if(!_loc4_)
                              {
                                 addr136:
                              }
                           }
                        }
                        else
                        {
                           §§push(5);
                           if(!_loc4_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr107:
                                    §§push(1);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr115);
                                    }
                                    addr191:
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
                                          addr41:
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
                                          §§goto(addr41);
                                    }
                                    (§"c§.getItemByName("TextField_LevelName") as §1!-§).§#!F§.text = _loc1_;
                                    if(!_loc4_)
                                    {
                                       (§"c§.getItemByName("Container_PauseMenu") as §4!C§).x = §<;§;
                                       loop0:
                                       while(true)
                                       {
                                          this.§ 8§(false);
                                          loop1:
                                          while(true)
                                          {
                                             §0Z§.§-m§.§5!T§ = true;
                                             loop2:
                                             while(true)
                                             {
                                                §"c§.getItemByName("MovieClip_SoundsOff").setVisibility(!§,l§.§3n§());
                                                while(true)
                                                {
                                                   §§push(this.§+9§);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(§§pop() != null)
                                                      {
                                                         while(_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§+9§);
                                                               addr324:
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                                  addr325:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                         addr318:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§+9§ = §4N§.§!!L§.§]!§(§4N§.§!!L§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §4!C§,{"x":0},null,0.25),§4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §&Q§).mClip,{"alpha":1},{"alpha":0},0.25));
                                                         loop6:
                                                         while(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(this.§+9§);
                                                            while(_loc3_)
                                                            {
                                                               §§pop().onComplete = this.§[A§;
                                                               while(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr318);
                                                                  §§pop().play();
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               §§push(this.§+9§);
                                                               continue loop6;
                                                               if(_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                   §§goto(addr324);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr322);
                                 }
                                 else
                                 {
                                    addr149:
                                    §§push(3);
                                    if(_loc4_ && _loc3_)
                                    {
                                       addr186:
                                    }
                                    §§goto(addr191);
                                 }
                              }
                              else
                              {
                                 §§push(6);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    if(§§pop() === _loc2_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr133);
                                       }
                                       else
                                       {
                                          addr168:
                                          §§push(4);
                                          if(_loc4_ && this)
                                          {
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    else
                                    {
                                       §§push(7);
                                       if(_loc3_)
                                       {
                                          if(§§pop() === _loc2_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                §§goto(addr149);
                                             }
                                             else
                                             {
                                                §§goto(addr168);
                                             }
                                          }
                                          else
                                          {
                                             §§push(8);
                                             if(!(_loc4_ && this))
                                             {
                                                addr166:
                                                if(§§pop() === _loc2_)
                                                {
                                                   §§goto(addr168);
                                                }
                                                else
                                                {
                                                   §§goto(addr191);
                                                   §§push(5);
                                                }
                                                §§goto(addr191);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr107);
                  addr29:
               }
               catch(error:Error)
               {
                  _loc2_ = error;
               }
            }
            §§goto(addr107);
         }
         §§goto(addr29);
      }
      
      private function §[A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§ 8§(true);
         }
      }
      
      private function § 8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§"c§.getItemByName("Button_Resume") as §+!M§).setEnabled(param1);
            loop0:
            while(true)
            {
               (§"c§.getItemByName("Button_Replay") as §+!M§).setEnabled(param1);
               loop1:
               while(true)
               {
                  (§"c§.getItemByName("Button_Menu") as §+!M§).setEnabled(param1);
                  loop2:
                  while(_loc3_)
                  {
                     (§"c§.getItemByName("Button_Help") as §+!M§).setEnabled(param1);
                     loop3:
                     while(true)
                     {
                        (§"c§.getItemByName("Button_Sound") as §+!M§).setEnabled(param1);
                        while(true)
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                           addr73:
                           §"c§.getItemByName("Button_Help").setEnabled(§,F§.§4V§());
                           if(_loc3_ || this)
                           {
                              return;
                              addr38:
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr38);
      }
      
      private function §4l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§+9§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     §§push(this.§+9§);
                     while(true)
                     {
                        §§pop().stop();
                        addr127:
                        while(true)
                        {
                        }
                        addr33:
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              addr42:
                              §§pop().play();
                              if(_loc2_ && _loc2_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       addr71:
                                       §§push(this.§+9§);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr33);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().onComplete = this.§4_§;
                                             continue loop5;
                                             §§goto(addr71);
                                          }
                                          addr54:
                                       }
                                    }
                                    addr107:
                                    while(true)
                                    {
                                       §§goto(addr54);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr127);
               }
               while(true)
               {
                  this.§+9§ = §4N§.§!!L§.§]!§(§4N§.§!!L§.§5!N§(§"c§.getItemByName("Container_PauseMenu") as §4!C§,{"x":§<;§},null,0.25),§4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_DarkBG") as §&Q§).mClip,{"alpha":0},{"alpha":1},0.25));
                  §§goto(addr107);
               }
            }
         }
         §§goto(addr127);
      }
      
      private function §4_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = StatePlay.§`O§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() != §[4§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr92);
                  }
                  else
                  {
                     while(true)
                     {
                        addr60:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr29);
                     }
                     addr93:
                  }
               }
               while(true)
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        return §[4§.STATE_STATUS_COMPLETED;
                     }
                     §§goto(addr60);
                  }
                  break;
                  §§goto(addr93);
               }
               addr29:
               return §[4§.STATE_STATUS_RUNNING;
            }
            §§goto(addr92);
         }
         addr92:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            do
            {
               §0Z§.§-m§.§5!T§ = false;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§<d§ = null;
         var _loc7_:§8'§ = null;
         var _loc8_:* = param2;
         if(!(_loc11_ && param1))
         {
            if("HELP" === _loc8_)
            {
               if(!_loc11_)
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     addr596:
                  }
               }
               else
               {
                  addr486:
                  §§push(1);
                  if(_loc11_)
                  {
                     addr531:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc8_)
            {
               if(_loc10_ || param3)
               {
                  §§goto(addr486);
               }
               else
               {
                  addr514:
                  §§push(3);
                  if(!_loc10_)
                  {
                     addr587:
                  }
               }
            }
            else if("RESUME_LEVEL" === _loc8_)
            {
               if(!_loc11_)
               {
                  §§push(2);
                  if(_loc11_ && this)
                  {
                  }
               }
               else
               {
                  §§goto(addr514);
               }
            }
            else if("END_LEVEL" === _loc8_)
            {
               if(_loc10_ || param3)
               {
                  §§goto(addr514);
               }
               else
               {
                  addr528:
                  §§push(4);
                  if(!_loc11_)
                  {
                     §§goto(addr531);
                  }
                  else
                  {
                     addr573:
                  }
               }
            }
            else if("MENU" === _loc8_)
            {
               if(!(_loc11_ && param2))
               {
                  §§goto(addr528);
               }
               else
               {
                  addr593:
                  §§push(9);
                  if(_loc10_)
                  {
                     §§goto(addr596);
                  }
                  else
                  {
                     addr613:
                  }
               }
            }
            else
            {
               if("TOGGLE_SOUNDS" === _loc8_)
               {
                  if(!_loc11_)
                  {
                     §§push(5);
                     if(_loc10_ || param3)
                     {
                        §§goto(addr618);
                     }
                     else
                     {
                        §§goto(addr596);
                     }
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc8_)
               {
                  if(!(_loc11_ && param3))
                  {
                     §§push(6);
                     if(_loc10_)
                     {
                        §§goto(addr618);
                     }
                     else
                     {
                        §§goto(addr573);
                     }
                  }
               }
               else if("TOGGLE_FULLSCREEN" === _loc8_)
               {
                  if(!(_loc11_ && param3))
                  {
                     §§push(7);
                     if(!_loc11_)
                     {
                        §§goto(addr573);
                     }
                     §§goto(addr618);
                  }
                  else
                  {
                     §§goto(addr593);
                  }
               }
               else
               {
                  if("BUTTON_NO" === _loc8_)
                  {
                     if(_loc10_)
                     {
                        §§push(8);
                        if(!(_loc11_ && param1))
                        {
                           §§goto(addr587);
                        }
                        else
                        {
                           §§goto(addr596);
                        }
                     }
                  }
                  else if("BUTTON_YES" === _loc8_)
                  {
                     if(_loc10_)
                     {
                        §§goto(addr593);
                     }
                  }
                  else if("CHECKBOX_CHANGE" !== _loc8_)
                  {
                     addr618:
                     loop0:
                     while(true)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              this.§4l§();
                              if(!(_loc10_ || param3))
                              {
                                 §[&§.§@!-§(_loc5_);
                                 addr261:
                                 loop1:
                                 while(_loc10_ || param3)
                                 {
                                    if(_loc11_ && param3)
                                    {
                                       addr352:
                                       break loop0;
                                       addr363:
                                    }
                                    §"c§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                    while(true)
                                    {
                                       if(!_loc10_)
                                       {
                                          continue loop1;
                                       }
                                       if(!(_loc11_ && param2))
                                       {
                                          break loop0;
                                       }
                                    }
                                 }
                              }
                              continue;
                              break loop0;
                              addr261:
                              break;
                           case 1:
                              addr368:
                              if((§[&§.§&!'§ as §!&§).§`!P§())
                              {
                                 if(_loc10_)
                                 {
                                    if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                                    {
                                       addr380:
                                       this.§;!F§();
                                       addr382:
                                    }
                                    §§goto(addr352);
                                 }
                                 §§goto(addr382);
                              }
                              else
                              {
                                 this.§;!F§();
                                 §§goto(addr363);
                              }
                           case 2:
                              this.§4l§();
                              §[&§.§>!E§();
                              break;
                              addr357:
                           case 3:
                              break loop0;
                           case 4:
                              §§push(§[&§.§&!'§);
                              if(!_loc11_)
                              {
                                 addr324:
                                 if((§§pop() as §!&§).§`!P§())
                                 {
                                    if(!(_loc11_ && param3))
                                    {
                                       if(!§]u§.sCheetosPopups.showPopup(§8!I§.§-k§))
                                       {
                                          addr338:
                                          this.§5!!§();
                                          §§goto(addr340);
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr340);
                                 }
                                 else
                                 {
                                    this.§5!!§();
                                    addr294:
                                    if(!(_loc10_ || param1))
                                    {
                                       §§goto(addr380);
                                    }
                                 }
                                 §§goto(addr277);
                              }
                              else
                              {
                                 §§goto(addr368);
                              }
                           case 5:
                              addr285:
                              §§push(§,l§.§3n§());
                              if(_loc10_)
                              {
                                 §§push(!§§pop());
                              }
                              _loc4_ = §§pop();
                              if(!_loc11_)
                              {
                                 §,l§.§6!2§(_loc4_);
                                 §§goto(addr274);
                              }
                              else
                              {
                                 §§goto(addr294);
                              }
                           case 6:
                              §§push(§[&§.§'a§());
                              if(_loc10_ || param1)
                              {
                                 if(!(_loc11_ && param3))
                                 {
                                    addr256:
                                    §§push(!§§pop());
                                    if(!_loc11_)
                                    {
                                       if(_loc10_)
                                       {
                                          _loc5_ = §§pop();
                                          §§goto(addr261);
                                       }
                                       else
                                       {
                                          §§goto(addr324);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr285);
                                    }
                                    §§goto(addr294);
                                 }
                                 else
                                 {
                                    §§goto(addr368);
                                 }
                              }
                              §§goto(addr256);
                           case 7:
                              break loop0;
                           case 8:
                              if(§]u§.sCheetosPopups.getCurrentPopupName() != §8!I§.RESTART_LEVEL)
                              {
                                 if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
                                 {
                                    addr156:
                                    if(_loc10_ || param2)
                                    {
                                       if(_loc10_)
                                       {
                                          sCheetosPopups.hidePopup();
                                          if(!(_loc11_ && this))
                                          {
                                             if(_loc10_)
                                             {
                                                addr133:
                                                break loop0;
                                             }
                                             addr188:
                                             if(!(_loc11_ && this))
                                             {
                                                if(_loc10_)
                                                {
                                                   addr197:
                                                   sCheetosPopups.hidePopup();
                                                   addr199:
                                                   §§goto(addr133);
                                                   addr199:
                                                }
                                                else
                                                {
                                                   §§goto(addr357);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr261);
                                             }
                                             §§goto(addr133);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr380);
                                       §§goto(addr352);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr188);
                           case 9:
                              if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                              {
                                 if(!_loc11_)
                                 {
                                    this.§;!F§();
                                    addr383:
                                    break loop0;
                                    addr146:
                                 }
                                 break loop0;
                              }
                              if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
                              {
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       if(_loc10_ || this)
                                       {
                                          this.§5!!§();
                                          if(!(_loc11_ && this))
                                          {
                                             addr115:
                                             if(_loc10_ || this)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(true)
                                                      {
                                                         §§goto(addr383);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                else
                                                {
                                                   §§goto(addr156);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr146);
                                             }
                                             §§goto(addr383);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr338);
                                       §§goto(addr340);
                                    }
                                    else
                                    {
                                       §§goto(addr285);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr383);
                           case 10:
                              _loc6_ = param3 as §<d§;
                              if(_loc10_ || param3)
                              {
                                 §§push(§,l§.§,?§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§,l§.§,?§.§+d§);
                                    if(!(_loc11_ && param3))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().§+d§ = §§pop();
                                    while(true)
                                    {
                                       continue loop4;
                                       addr407:
                                       if(_loc10_ || param1)
                                       {
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          addr455:
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr435);
                        }
                        break;
                     }
                     return;
                     §§push(11);
                  }
                  §§goto(addr618);
               }
               §§goto(addr618);
               if(!_loc11_)
               {
                  §§goto(addr613);
               }
            }
            §§goto(addr618);
         }
         §§goto(addr593);
      }
      
      private function §;!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §0"§.§!7§();
            do
            {
               mNextState = §0"§.§`O§;
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §5!!§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §,Y§.§[[§("levelComplete",§[!!§.§7!F§,false);
            if(!(_loc3_ && _loc2_))
            {
               addr68:
               mNextState = §6l§.§`O§;
            }
            return;
         }
         catch(e:Error)
         {
         }
         §§goto(addr68);
      }
      
      private function §;z§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc4_)
         {
            if(!(§[&§.§&!'§ as §!&§).§`!P§())
            {
               _loc2_.visible = false;
               if(!_loc3_)
               {
                  addr56:
               }
               else
               {
                  addr83:
               }
               return;
            }
            if(!(_loc3_ && _loc3_))
            {
               _loc2_.visible = true;
            }
            §§goto(addr83);
         }
         §§goto(addr56);
      }
   }
}
