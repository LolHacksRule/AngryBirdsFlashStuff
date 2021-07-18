package § "p§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §1!i§.§6"#§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;!W§.§[!§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §@§.§<"b§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §##N§ extends §[!§
   {
      
      public static const §3!#§:int = 195;
      
      public static const §[A§:int = 49;
      
      public static const §9k§:Number = -250;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §##N§)
         {
            §3!#§ = 195;
            while(true)
            {
               §[A§ = 49;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §9k§ = -250;
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      protected var §@!`§:§[#R§ = null;
      
      protected var §=!6§:§ #^§;
      
      protected var §<h§:MovieClip;
      
      protected var §<"6§:§^"m§;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §+";§:MovieClip;
      
      protected var §,"#§:TextField;
      
      private var §?!U§:§<"b§;
      
      public function §##N§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§=!6§ = § #^§(§=#=§.getItemByName("Container_PauseMenu"));
               while(true)
               {
                  this.§=!6§.x = §9k§;
                  loop2:
                  while(!_loc2_)
                  {
                     this.§<h§ = §=#=§.getItemByName("MovieClip_Bg").mClip;
                     loop3:
                     while(true)
                     {
                        this.§+";§ = this.§=!6§.mClip.replayLocked;
                        loop4:
                        for(; !_loc2_; while(_loc1_ || _loc2_)
                        {
                        })
                        {
                           this.§+";§.visible = false;
                           loop5:
                           while(true)
                           {
                              this.§<"6§ = §^"m§(this.§=!6§.getItemByName("Button_Resume"));
                              continue loop4;
                              addr81:
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§?!U§ = new §<"b§(§ #^§(§=#=§.getItemByName("RovioNewsContainer")));
                                    while(true)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             §§goto(addr81);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§^"^§ = §^"m§(this.§=!6§.getItemByName("Button_Replay"));
                                                do
                                                {
                                                   this.§,"#§ = TextField(this.§=!6§.mClip.title.txtLabel);
                                                   continue loop10;
                                                }
                                                while(!(_loc1_ || _loc1_));
                                                
                                                return;
                                             }
                                             addr120:
                                          }
                                       }
                                       continue loop5;
                                       addr68:
                                       this.§?!U§.§4i§();
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr34);
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^W§ = §^"m§(this.§=!6§.getItemByName("Button_Menu"));
            §§goto(addr120);
         }
      }
      
      override protected function refresh() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(!_loc3_)
         {
            if(§+!b§.currentLevelWrittenName)
            {
               loop0:
               while(true)
               {
                  _loc1_ = §+!b§.currentLevelWrittenName;
                  loop1:
                  while(true)
                  {
                     this.§,"#§.text = _loc1_;
                     addr67:
                     while(true)
                     {
                        §6"#§.§7s§(TextField(this.§,"#§),§[A§,§3!#§);
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.disable(false);
         }
         do
         {
            this.§?!U§.dispose();
         }
         while(_loc1_);
         
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!@§(param1);
         }
         do
         {
            super.disable(param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.enable(param1);
            while(true)
            {
               this.refresh();
               loop2:
               while(!_loc2_)
               {
                  this.§3!q§(param1);
                  while(!_loc2_)
                  {
                     §,!q§.§9!,§.background.stopAmbientSound();
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.§?!U§.reset();
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §8!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@!`§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr64:
                     this.§@!`§.stop();
                  }
                  do
                  {
                     this.§@!`§ = null;
                  }
                  while(_loc2_);
                  
                  addr39:
               }
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr39);
      }
      
      protected function §3!q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=#=§.setVisibility(true);
            while(true)
            {
               this.§8!m§();
               addr171:
               while(_loc2_)
               {
                  §,!q§.pause();
               }
            }
         }
         loop2:
         do
         {
            this.§;"]§(false);
            loop3:
            do
            {
               if(param1)
               {
                  continue;
               }
               this.§=!6§.x = 0;
               while(_loc2_)
               {
                  this.§<h§.alpha = 1;
                  do
                  {
                     this.§ "6§();
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(_loc2_ || this)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr19);
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(this.§@!`§);
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              §§pop().play();
                           }
                        }
                        while(_loc3_ && _loc3_)
                        {
                           while(true)
                           {
                              §§goto(addr109);
                           }
                        }
                        §?!r§.§"#_§("pause_screen_door_in");
                     }
                     continue loop2;
                  }
               }
               §§goto(addr171);
            }
            while(_loc3_ && param1);
            
            this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":1},null,0.25));
            §§goto(addr148);
         }
         while(_loc3_);
         
         addr19:
      }
      
      protected function § "6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!m§();
            while(true)
            {
               §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
               while(_loc1_ || this)
               {
                  this.§;"]§(true);
                  while(!(_loc2_ && this))
                  {
                     this.§?!U§.visible = true;
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      protected function §;"]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"6§.setEnabled(param1);
         }
         while(true)
         {
            this.§^"^§.setEnabled(param1);
            while(!_loc2_)
            {
               this.§^W§.setEnabled(param1);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §0"v§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§<"6§.setComponentVisualState(param1);
            while(true)
            {
               this.§^"^§.setComponentVisualState(param1);
               while(_loc3_ || _loc3_)
               {
                  this.§^W§.setComponentVisualState(param1);
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      protected function §8!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!U§.visible = false;
            while(true)
            {
               §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
               while(true)
               {
                  this.§8!m§();
                  addr68:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  this.§<h§.alpha = 0;
                  loop4:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        continue;
                     }
                     addr61:
                     while(true)
                     {
                        if(!(_loc3_ || this))
                        {
                           addr124:
                           this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":0},null,0.25));
                           break;
                        }
                        §§goto(addr68);
                     }
                     loop6:
                     while(true)
                     {
                        §§push(this.§@!`§);
                        loop7:
                        while(true)
                        {
                           §§pop().onComplete = this.§;!§;
                           addr113:
                           while(true)
                           {
                              if(_loc3_ || param1)
                              {
                                 §§push(this.§@!`§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                           §§pop().play();
                           break loop4;
                        }
                     }
                  }
                  §?!r§.§"#_§("pause_screen_door_out");
                  §§goto(addr90);
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr153);
      }
      
      protected function §;!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=#=§.setVisibility(false);
            while(true)
            {
               this.§8!m§();
            }
            addr74:
         }
         loop1:
         while(true)
         {
            dispatchEvent(new §"!4§(§"!4§.§ z§));
            while(_loc2_)
            {
               §,!q§.resume();
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop1;
               }
               §§goto(addr74);
            }
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(§]"u§)
            {
               if(_loc4_ || param1)
               {
                  §§goto(addr128);
               }
            }
            var _loc2_:* = param1.§=!k§;
            if(_loc4_ || _loc3_)
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr172:
                     §§push(1);
                     if(!_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  if("RESUME_LEVEL" === _loc2_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr172);
                     }
                     else
                     {
                        addr179:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else if("MENU" === _loc2_)
                  {
                     §§goto(addr179);
                  }
                  else
                  {
                     §§push(3);
                  }
                  §§goto(addr179);
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §?!r§.§"#_§("misc_menubuttonproceed_1");
                     dispatchEvent(new §"!4§(§"!4§.RESTART_LEVEL));
                     break;
                     addr111:
                     addr118:
                  case 1:
                     §?!r§.§"#_§("misc_menubuttonproceed_1");
                     if(_loc4_)
                     {
                        dispatchEvent(new §"!4§(§"!4§.RESUME_LEVEL));
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§goto(addr111);
                        }
                        break;
                     }
                     break;
                  case 2:
                     §4#;§.singleton.§@!2§().skipTransition = true;
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           loop0:
                           while(true)
                           {
                              §?!r§.§"#_§("misc_menubuttonback_1");
                              while(true)
                              {
                                 dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelSelectionStateName()));
                                 if(_loc3_ && this)
                                 {
                                    break loop2;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue loop0;
                                 }
                              }
                              break loop2;
                           }
                        }
                        else
                        {
                           §§goto(addr118);
                        }
                     }
               }
               return;
            }
            §§goto(addr179);
         }
         addr128:
      }
   }
}
