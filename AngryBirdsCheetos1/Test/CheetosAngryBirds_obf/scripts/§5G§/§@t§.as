package §5G§
{
   import § g§.§<n§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §,§.§ 3§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§!L§;
   import §2v§.§&O§;
   import §6;§.§%[§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§-!P§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §@t§ extends §?,§
   {
      
      private static const §3!&§:Number = -250;
      
      public static const §3!?§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3!&§ = -250;
            do
            {
               §3!?§ = "PauseState";
            }
            while(!(_loc1_ || §@t§));
            
         }
      }
      
      private var §1C§:§7g§ = null;
      
      public function §@t§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §%!0§ = new §5!§(this);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §%!0§.init(§>!;§.§ get§.Views.View_LevelPause[0]);
            if(!(_loc1_ && _loc2_))
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§%[§.§`1§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        addr155:
                        while(true)
                        {
                           §§pop().start();
                           addr156:
                           while(true)
                           {
                           }
                        }
                     }
                     addr153:
                  }
                  loop2:
                  while(true)
                  {
                     this.§;!'§();
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           this.§+g§();
                           while(_loc2_)
                           {
                              §%!0§.getItemByName("Button_Help").setEnabled(§!L§.§'R§());
                              loop5:
                              while(!(_loc3_ && _loc2_))
                              {
                                 §%!0§.getItemByName("Button_Help").setVisibility(§!L§.§'R§());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§@!Z§.§^&§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr91:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop13:
                                             while(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr58);
                                                   §§push(§@!Z§.§^&§);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         break loop13;
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr94);
                                                }
                                             }
                                             return;
                                             addr48:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             addr94:
                                             while(_loc2_)
                                             {
                                                §§push(§@!Z§.§^&§);
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   continue loop9;
                                                }
                                                addr58:
                                                while(true)
                                                {
                                                   (§§pop() as §<n§).mouseEnabled = false;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr62);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr153);
                     }
                  }
               }
               §§goto(addr155);
            }
         }
         §§goto(addr104);
      }
      
      private function §;!'§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§5!9§.§-!O§.§7!6§(§@;§.§6!K§));
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
         {
            (§%!0§.getItemByName("TextField_LevelName") as §'V§).§2!%§.text = _loc1_;
            loop0:
            while(true)
            {
               (§%!0§.getItemByName("Container_PauseMenu") as §<6§).x = §3!&§;
               loop1:
               while(true)
               {
                  this.§8!c§(false);
                  while(true)
                  {
                     §%[§.§6+§.isPaused = true;
                     addr180:
                     while(!_loc3_)
                     {
                     }
                     continue loop0;
                     loop9:
                     while(!(_loc3_ && this))
                     {
                        loop10:
                        while(true)
                        {
                           this.§1C§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_PauseMenu") as §<6§,{"x":0},null,0.25),§%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_DarkBG") as §-!P§).mClip,{"alpha":1},{"alpha":0},0.25));
                           loop11:
                           while(true)
                           {
                              §§push(this.§1C§);
                              loop12:
                              for(; _loc2_; §§push(this.§1C§),if(!(_loc2_ || this))
                              {
                                 continue;
                              },§§goto(addr52))
                              {
                                 addr80:
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§pop().onComplete = this.§ !§;
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop10;
                                          }
                                          continue loop12;
                                       }
                                       addr146:
                                       addr172:
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§1C§);
                                          break loop12;
                                       }
                                       while(!_loc3_)
                                       {
                                          §§push(this.§1C§);
                                          §§goto(addr146);
                                       }
                                       continue loop1;
                                       addr52:
                                       §§pop().play();
                                       if(_loc2_ || _loc3_)
                                       {
                                          continue loop11;
                                       }
                                    }
                                    continue loop9;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() == null)
                                    {
                                       continue loop10;
                                    }
                                    §§goto(addr146);
                                    §§goto(addr80);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().stop();
                                 continue loop9;
                              }
                           }
                        }
                        §§goto(addr180);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!§5!9§.§!t§());
            §§goto(addr172);
         }
      }
      
      private function § !§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§8!c§(true);
         }
      }
      
      private function §8!c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§%!0§.getItemByName("Button_Resume") as §^-§).setEnabled(param1);
            loop0:
            while(true)
            {
               (§%!0§.getItemByName("Button_Replay") as §^-§).setEnabled(param1);
               addr107:
               while(true)
               {
                  (§%!0§.getItemByName("Button_Menu") as §^-§).setEnabled(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §5]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§1C§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1C§);
                     addr137:
                     while(true)
                     {
                        §§pop().stop();
                        addr138:
                        while(true)
                        {
                        }
                     }
                  }
                  addr135:
               }
               while(true)
               {
                  this.§1C§ = §%g§.§'I§.§!!7§(§%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_PauseMenu") as §<6§,{"x":§3!&§},null,0.25),§%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_DarkBG") as §-!P§).mClip,{"alpha":0},{"alpha":1},0.25));
                  loop5:
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.§1C§);
                        loop6:
                        for(; !_loc1_; while(true)
                        {
                           §§push(this.§1C§);
                           if(_loc1_ && _loc2_)
                           {
                              continue loop6;
                           }
                           §§pop().play();
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           §§goto(addr60);
                        },return)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §§pop().onComplete = this.§`G§;
                           while(_loc2_ || _loc2_)
                           {
                              continue loop6;
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr137);
                     }
                     break;
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr138);
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §`G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = StatePlay.§3!?§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length <= 0)
                  {
                     while(true)
                     {
                        this.§5;§();
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           return §%!$§.STATE_STATUS_RUNNING;
                           addr55:
                        }
                        else
                        {
                           addr88:
                        }
                        return _loc2_;
                     }
                     break;
                  }
                  return §%!$§.STATE_STATUS_COMPLETED;
               }
            }
            §§goto(addr88);
         }
         §§goto(addr55);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §%[§.§6+§.isPaused = false;
               loop1:
               while(true)
               {
                  §§push(§@!Z§.§^&§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr100:
                     addr70:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 addr81:
                              }
                           }
                           addr24:
                           return;
                           addr49:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                     }
                     addr70:
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop2;
                        }
                        (§§pop() as §<n§).mouseEnabled = true;
                        §§goto(addr81);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr70);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:§0j§ = null;
         var _loc6_:§ 3§ = null;
         var _loc7_:* = param2;
         if(_loc10_ || param2)
         {
            if("HELP" === _loc7_)
            {
               if(!_loc9_)
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     addr547:
                  }
               }
               else
               {
                  addr586:
                  §§push(7);
                  if(_loc10_)
                  {
                     addr589:
                  }
                  else
                  {
                     addr636:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc7_)
            {
               if(_loc10_ || param2)
               {
                  addr507:
                  §§push(1);
                  if(_loc9_ && param1)
                  {
                     addr653:
                  }
               }
               else
               {
                  addr577:
                  §§push(6);
                  if(_loc10_)
                  {
                     addr580:
                  }
                  else
                  {
                     addr622:
                  }
               }
            }
            else if("RESUME_LEVEL" === _loc7_)
            {
               if(_loc10_)
               {
                  §§push(2);
                  if(!_loc10_)
                  {
                     addr566:
                  }
               }
               else
               {
                  addr544:
                  §§push(4);
                  if(_loc10_)
                  {
                     §§goto(addr547);
                  }
                  else
                  {
                     §§goto(addr580);
                  }
               }
            }
            else if("END_LEVEL" === _loc7_)
            {
               if(_loc10_ || this)
               {
                  §§push(3);
                  if(!_loc10_)
                  {
                     §§goto(addr589);
                  }
               }
               else
               {
                  addr614:
                  §§push(9);
                  if(!(_loc9_ && param3))
                  {
                     §§goto(addr622);
                  }
               }
            }
            else if("MENU" === _loc7_)
            {
               if(!_loc9_)
               {
                  §§goto(addr544);
               }
               else
               {
                  §§goto(addr586);
               }
            }
            else
            {
               if("TOGGLE_SOUNDS" === _loc7_)
               {
                  if(!(_loc9_ && param2))
                  {
                     §§push(5);
                     if(_loc10_ || param3)
                     {
                        §§goto(addr566);
                     }
                     else
                     {
                        addr658:
                        while(true)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 this.§5]§();
                                 if(_loc10_ || param3)
                                 {
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          var _loc8_:* = §@!Z§.§;!,§.slingshot.§0!b§;
                                          addr63:
                                          for each(_loc6_ in _loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                §5!9§.§#%§.§2!;§(_loc6_.name,false);
                                             }
                                             §§goto(addr63);
                                          }
                                       }
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       addr276:
                                       break;
                                       addr338:
                                       addr292:
                                    }
                                    else
                                    {
                                       addr396:
                                       if(§§pop() >= §"!d§.§"!Q§)
                                       {
                                          addr398:
                                          if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                                          {
                                             addr404:
                                             this.§+8§();
                                          }
                                          addr343:
                                          break;
                                          addr356:
                                       }
                                       else
                                       {
                                          §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                                          addr372:
                                          if(!_loc10_)
                                          {
                                             §§goto(addr404);
                                          }
                                          else
                                          {
                                             addr374:
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr404);
                                    }
                                 }
                                 §§goto(addr374);
                              case 1:
                                 addr411:
                                 §§push((§@!Z§.§;!,§ as § $§).§,!e§());
                                 if(!_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§+8§();
                                       addr361:
                                       if(!_loc10_)
                                       {
                                          addr417:
                                          §§push(§>f§.§%!`§);
                                          loop1:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr420:
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop1;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr396);
                                          }
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr417);
                                 }
                                 §§goto(addr420);
                              case 2:
                                 this.§5]§();
                                 addr348:
                                 if(_loc10_ || param3)
                                 {
                                    §@!Z§.§,R§();
                                    addr342:
                                    break;
                                    addr342:
                                 }
                                 else
                                 {
                                    §§goto(addr372);
                                 }
                                 break;
                              case 3:
                                 break;
                              case 4:
                                 §§push(§@!Z§.§;!,§);
                                 if(!_loc9_)
                                 {
                                    addr310:
                                    if((§§pop() as § $§).§,!e§())
                                    {
                                       addr311:
                                       if(_loc10_ || param1)
                                       {
                                          if(!§?,§.sCheetosPopups.showPopup(§&O§.§3!T§))
                                          {
                                             addr334:
                                             this.§+!K§();
                                             if(_loc10_)
                                             {
                                                §§goto(addr338);
                                             }
                                             else
                                             {
                                                §§goto(addr361);
                                             }
                                          }
                                          §§goto(addr292);
                                       }
                                       else
                                       {
                                          §§goto(addr348);
                                       }
                                    }
                                    else
                                    {
                                       this.§+!K§();
                                       addr297:
                                    }
                                    §§goto(addr276);
                                 }
                                 else
                                 {
                                    §§goto(addr411);
                                 }
                              case 5:
                                 §§push(§5!9§);
                                 §§push(§5!9§.§!t§());
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().§+#§(§§pop());
                                 this.§5;§();
                                 addr273:
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§goto(addr334);
                                 break;
                                 addr291:
                              case 6:
                                 §§push(§@!Z§.§4!X§());
                                 if(_loc10_)
                                 {
                                    if(_loc10_ || param3)
                                    {
                                       if(!_loc9_)
                                       {
                                          addr264:
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             if(_loc10_)
                                             {
                                                _loc4_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   §@!Z§.§1L§(_loc4_);
                                                   addr239:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §%!0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                         continue loop3;
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                }
                                             }
                                             §§goto(addr422);
                                          }
                                          else
                                          {
                                             §§goto(addr310);
                                          }
                                       }
                                       §§goto(addr420);
                                    }
                                    §§goto(addr396);
                                 }
                                 §§goto(addr264);
                              case 7:
                                 break;
                              case 8:
                                 if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                                 {
                                    addr199:
                                    if(!_loc9_)
                                    {
                                       sCheetosPopups.hidePopup();
                                       addr203:
                                       if(!(_loc9_ && param3))
                                       {
                                          addr128:
                                          break;
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr404);
                                 }
                                 else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc10_ || param3)
                                       {
                                          sCheetosPopups.hidePopup();
                                          if(_loc10_ || param3)
                                          {
                                          }
                                          break;
                                       }
                                       §§goto(addr218);
                                    }
                                    break;
                                 }
                                 §§goto(addr128);
                              case 9:
                                 if(§?,§.sCheetosPopups.getCurrentPopupName() != §&O§.RESTART_LEVEL)
                                 {
                                    if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
                                    {
                                       addr95:
                                       if(!(_loc9_ && param2))
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             this.§+!K§();
                                             if(!_loc9_)
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      addr70:
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr137:
                                                   if(_loc10_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               this.§+8§();
                                                               addr152:
                                                               if(!(_loc9_ && param3))
                                                               {
                                                                  addr86:
                                                                  §§goto(addr70);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr423);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr311);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                }
                                                §§goto(addr273);
                                             }
                                             break;
                                          }
                                          §§goto(addr199);
                                          §§goto(addr404);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr137);
                              case 10:
                                 sCheetosPopups.hidePopup();
                                 if(!_loc9_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                    §§goto(addr86);
                                 }
                                 break;
                              case 11:
                                 _loc5_ = param3 as §0j§;
                                 if(_loc10_)
                                 {
                                    addr463:
                                    §§push(§5!9§.§-!O§);
                                    §§push(§5!9§.§-!O§.§8!&§);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().§8!&§ = §§pop();
                                    addr475:
                                    §§push(§5!9§.§-!O§);
                                    if(_loc10_)
                                    {
                                       if(§§pop().§8!&§)
                                       {
                                          addr454:
                                          _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          addr458:
                                          if(_loc9_)
                                          {
                                             §§goto(addr475);
                                          }
                                          addr476:
                                          break;
                                       }
                                       _loc5_.setComponentState(§0j§.§+o§);
                                       if(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr475);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr454);
                                       }
                                       §§goto(addr458);
                                    }
                                    §§goto(addr463);
                                 }
                                 §§goto(addr454);
                           }
                           §§pop().§`!b§;
                           return;
                           if(!(_loc10_ || this))
                           {
                              continue;
                           }
                           §§goto(addr396);
                        }
                        addr603:
                     }
                  }
               }
               else if("TOGGLE_PARTICLES" === _loc7_)
               {
                  if(_loc10_ || param1)
                  {
                     §§goto(addr577);
                  }
                  else
                  {
                     addr628:
                     §§push(10);
                     if(_loc10_ || param2)
                     {
                        §§goto(addr636);
                     }
                     else
                     {
                        §§goto(addr653);
                     }
                  }
               }
               else if("TOGGLE_FULLSCREEN" === _loc7_)
               {
                  if(_loc10_)
                  {
                     §§goto(addr586);
                  }
               }
               else if("BUTTON_NO" === _loc7_)
               {
                  if(_loc10_)
                  {
                     §§push(8);
                     if(!(_loc9_ && param1))
                     {
                        §§goto(addr603);
                     }
                     §§goto(addr658);
                  }
                  else
                  {
                     §§goto(addr628);
                  }
               }
               else
               {
                  if("BUTTON_YES" === _loc7_)
                  {
                     if(!(_loc9_ && this))
                     {
                        §§goto(addr614);
                     }
                  }
                  else if("CREDIT_OK" === _loc7_)
                  {
                     if(!_loc9_)
                     {
                        §§goto(addr628);
                     }
                  }
                  else if("CHECKBOX_CHANGE" !== _loc7_)
                  {
                     §§goto(addr658);
                     §§push(12);
                  }
                  §§goto(addr658);
               }
               §§goto(addr658);
               if(_loc10_)
               {
                  §§goto(addr653);
               }
            }
            §§goto(addr658);
         }
         §§goto(addr507);
      }
      
      private function §5;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§5!9§.§!t§());
         if(!_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §5!9§.§+#§(_loc1_);
         }
         do
         {
            §%!0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc1_);
         }
         while(!_loc3_);
         
      }
      
      private function §+8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!9§.§7T§();
            do
            {
               mNextState = §'!9§.§3!?§;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function §+!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!@§.§%Q§("levelComplete",§5!9§.§-!O§.§ !&§(§@;§.§6!K§),false);
            while(true)
            {
               §,!7§.§13§();
               loop1:
               while(!(_loc1_ && this))
               {
                  while(true)
                  {
                     mNextState = §39§.§3!?§;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §+g§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(!(_loc4_ && this))
         {
            if(!(§@!Z§.§;!,§ as § $§).§,!e§())
            {
               _loc2_.visible = false;
               if(!(_loc4_ && this))
               {
                  addr65:
               }
               else
               {
                  addr92:
               }
               return;
            }
            if(_loc3_ || _loc3_)
            {
               _loc2_.visible = true;
            }
            §§goto(addr92);
         }
         §§goto(addr65);
      }
   }
}
