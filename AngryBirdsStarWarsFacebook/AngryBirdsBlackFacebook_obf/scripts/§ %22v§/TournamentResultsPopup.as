package § "v§
{
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §+!c§.§5"$§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §1!i§.§6"#§;
   import §7!$§.§&$§;
   import §7"a§.§1"R§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TournamentResultsPopup extends AbstractPopup
   {
      
      private static var §@W§:Boolean = true;
      
      private static var §'=§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@W§ = true;
         }
         do
         {
            §'=§ = false;
         }
         while(!(_loc2_ || TournamentResultsPopup));
         
      }
      
      private var §?#7§:Object;
      
      private var §9A§:Object;
      
      private var §%"]§:Vector.<§5"$§>;
      
      private var §3"t§:Boolean;
      
      private var §&!'§:Boolean;
      
      private var §3!S§:MovieClip;
      
      private var §'I§:MovieClip;
      
      private var §%Z§:MovieClip;
      
      private var §6"6§:MovieClip;
      
      private var §2"h§:§3?§;
      
      private var §&#a§:MovieClip;
      
      private var §1"#§:MovieClip;
      
      private var §0o§:MovieClip;
      
      private var §;!q§:MovieClip;
      
      private var §7L§:MovieClip;
      
      private var §,#L§:MovieClip;
      
      private var §'#Q§:MovieClip;
      
      private var §>!G§:TextField;
      
      private var §]I§:§^"m§;
      
      private var §[#D§:§3?§;
      
      private var §4U§:§3?§;
      
      private var §1#O§:int;
      
      private var §5!P§:Object;
      
      public function TournamentResultsPopup(param1:Object, param2:int, param3:int, param4:String = "TournamentResultsPopup")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§9A§ = param1;
            do
            {
               super(param2,param3,§&$§.§@8§.Popups.Popup_TournamentResults[0],param4);
            }
            while(!_loc5_);
            
         }
      }
      
      public static function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'=§ = false;
         }
         do
         {
            §@W§ = true;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public static function §6"A§(param1:MovieClip, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param2);
         if(_loc4_)
         {
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           addr107:
                           §§push(0);
                           if(_loc5_)
                           {
                              addr162:
                           }
                        }
                        else
                        {
                           addr149:
                           §§push(2);
                           if(_loc4_)
                           {
                              §§goto(addr162);
                           }
                        }
                        addr168:
                        switch(§§pop())
                        {
                           case 0:
                              param1.gotoAndStop("Gold");
                              break;
                              addr89:
                           case 1:
                              param1.gotoAndStop("Silver");
                              break;
                              addr73:
                           case 2:
                              param1.gotoAndStop("Bronze");
                              if(!(_loc5_ && TournamentResultsPopup))
                              {
                                 if(!_loc5_)
                                 {
                                    addr35:
                                    break;
                                 }
                                 §§goto(addr89);
                              }
                              break;
                           default:
                              param1.gotoAndStop("Empty");
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    (param1.textRank as TextField).text = param2 + "th";
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr35);
                                    }
                                    break;
                                 }
                                 §§goto(addr73);
                              }
                        }
                        return;
                        addr167:
                     }
                     else
                     {
                        §§push(2);
                        if(!(_loc5_ && TournamentResultsPopup))
                        {
                           addr119:
                           §§push(_loc3_);
                           if(!(_loc5_ && param2))
                           {
                              addr127:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       addr147:
                                       if(§§pop() === _loc3_)
                                       {
                                          §§goto(addr149);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr149);
                              }
                              else
                              {
                                 §§push(3);
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr147);
                                 }
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr147);
                        }
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr127);
               }
               §§goto(addr119);
            }
            §§goto(addr107);
         }
         §§goto(addr168);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§3"t§ = false;
               loop1:
               while(true)
               {
                  this.§&!'§ = false;
                  while(true)
                  {
                     this.§3!S§ = §^c§.getItemByName("Container_Content").mClip;
                     continue loop0;
                     addr155:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.§%Z§.visible = false;
                     loop21:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           addr129:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr136:
                              if(!(_loc2_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    this.§?!J§();
                                    loop23:
                                    while(true)
                                    {
                                       this.§?#7§ = this.§%!S§();
                                       loop24:
                                       while(true)
                                       {
                                          §@#B§(§4#;§.singleton.dataModel).§1!f§.§""i§();
                                          loop25:
                                          for(; _loc1_; while(true)
                                          {
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop25;
                                             }
                                             if(!_loc1_)
                                             {
                                                continue loop24;
                                             }
                                             if(!_loc1_)
                                             {
                                                continue loop23;
                                             }
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             addr86:
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§goto(addr93);
                                             }
                                             while(true)
                                             {
                                                this.§2"h§ = new §3?§(this.§6"6§["Container_Static_Avatar"],false);
                                                §§goto(addr294);
                                                §§goto(addr86);
                                             }
                                          },continue loop21)
                                          {
                                             addr104:
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§1"R§.§%!E§);
                                                while(true)
                                                {
                                                   §§pop().§["u§(this.§9A§.players);
                                                   §§push(§1"R§.§%!E§);
                                                   addr93:
                                                   continue loop25;
                                                   if(!(_loc1_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().addEventListener(§1"R§.CACHING_COMPLETE,this.§9"2§);
                                                   loop28:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            addr283:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr224:
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        this.§'#Q§ = this.§&#a§["MovieClip_Many_Coins"];
                                                                        while(true)
                                                                        {
                                                                           this.§>!G§ = this.§0o§["txtReward"];
                                                                           break loop28;
                                                                           §§goto(addr129);
                                                                        }
                                                                        addr207:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§%Z§ = §^c§.getItemByName("Container_Bottom_Results").mClip;
                                                                        break loop21;
                                                                        §§goto(addr224);
                                                                     }
                                                                     addr326:
                                                                  }
                                                                  break;
                                                               }
                                                               addr239:
                                                               while(true)
                                                               {
                                                                  this.§,#L§ = this.§&#a§["MovieClip_Few_Coins"];
                                                                  continue loop15;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§4U§ = new §3?§(this.§&#a§["Container_Avatar_Right"]);
                                                               break loop25;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop25;
                                                   }
                                                   while(_loc1_ || _loc1_)
                                                   {
                                                      this.§&#a§.visible = false;
                                                      loop18:
                                                      while(true)
                                                      {
                                                         this.§1"#§.visible = false;
                                                         loop19:
                                                         while(true)
                                                         {
                                                            this.§'I§.visible = false;
                                                            addr149:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr155);
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§1"#§ = §^c§.getItemByName("Container_Bottom_Battle").mClip;
                                                      §§goto(addr334);
                                                      §§goto(addr192);
                                                   }
                                                   addr192:
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§[#D§ = new §3?§(this.§&#a§["Container_Avatar_Left"]);
                                                   §§goto(addr283);
                                                   §§goto(addr104);
                                                }
                                                addr294:
                                             }
                                          }
                                          addr264:
                                          addr310:
                                          while(_loc1_ || this)
                                          {
                                             if(_loc1_)
                                             {
                                                this.§;!q§ = this.§&#a§["trophy"];
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             this.§0o§ = this.§1"#§["Container_Bottom_Battle_Content"];
                                             §§goto(addr302);
                                             §§goto(addr264);
                                          }
                                       }
                                    }
                                 }
                                 addr143:
                              }
                              break;
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr149);
                     }
                     while(true)
                     {
                        this.§6"6§ = this.§%Z§["Container_Bottom_Results_Content"];
                        §§goto(addr310);
                        §§goto(addr136);
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      private function §`<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'I§.visible = false;
            loop0:
            while(true)
            {
               this.§%Z§.visible = false;
               while(true)
               {
                  this.§&#a§.visible = true;
                  addr315:
                  while(true)
                  {
                     this.§1"#§.visible = true;
                     addr309:
                     while(true)
                     {
                        this.§1#O§ = 0;
                     }
                  }
                  addr274:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§push(this.§4U§);
                  loop11:
                  while(true)
                  {
                     §§pop().setData(this.§5!P§);
                     loop12:
                     while(true)
                     {
                        §§push(this.§[#D§);
                        while(true)
                        {
                           §§pop().§2"1§();
                           loop14:
                           while(!(_loc2_ && _loc1_))
                           {
                              §§push(this.§4U§);
                              while(_loc1_)
                              {
                                 §§pop().§2"1§();
                                 loop16:
                                 while(true)
                                 {
                                    this.§7L§.gotoAndPlay("intro_start");
                                    loop17:
                                    while(_loc1_ || _loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop12;
                                       }
                                       this.§;!q§.visible = false;
                                       while(true)
                                       {
                                          this.§]I§ = §^c§.getItemByName("Button_Claim") as §^"m§;
                                          loop19:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr200:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         this.§]I§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                                                         loop20:
                                                         while(_loc1_)
                                                         {
                                                            §§push(this.§[#D§);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§3?§.EVENT_ANIMATION_INTRO_OVER);
                                                               addr177:
                                                               while(true)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this.§!#-§);
                                                                  addr180:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§[#D§);
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        §§push(§3?§.EVENT_ANIMATION_ATTACK_OVER);
                                                                        addr166:
                                                                        while(true)
                                                                        {
                                                                           §§pop().addEventListener(§§pop(),this.§8#T§);
                                                                           addr169:
                                                                           while(_loc1_)
                                                                           {
                                                                              §§push(this.§[#D§);
                                                                              continue loop21;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9#E§();
                                                      break loop19;
                                                   }
                                                   addr303:
                                                }
                                                break;
                                             }
                                             continue loop17;
                                             if(_loc2_ && this)
                                             {
                                                continue;
                                             }
                                             addr61:
                                             if(_loc1_ || _loc2_)
                                             {
                                                return;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr285);
                                                §§goto(addr61);
                                             }
                                             addr294:
                                          }
                                          while(true)
                                          {
                                             this.§1"#§.gotoAndStop("outro_start");
                                             §§goto(addr294);
                                             §§goto(addr200);
                                          }
                                       }
                                    }
                                    continue loop14;
                                 }
                                 §§push(this.§4U§);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr28);
                              }
                              continue loop11;
                           }
                           while(true)
                           {
                              §§goto(addr262);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr303);
      }
      
      private function §3!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§3"t§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr192:
                        while(true)
                        {
                           §§pop();
                           addr193:
                           while(true)
                           {
                              §§push(this.§&!'§);
                              addr162:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr163:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr192:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr19:
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           this.§>T§();
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(this.§5!P§));
                              while(true)
                              {
                                 §§push(§§pop());
                                 continue loop1;
                                 loop9:
                                 while(_loc1_ || this)
                                 {
                                    §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§'=§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc1_ || this)
                                          {
                                             addr61:
                                             §§push(!§§pop());
                                             if(!_loc2_)
                                             {
                                                if(_loc1_ || this)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§-"y§();
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            while(!_loc1_)
                                                            {
                                                               §§goto(addr84);
                                                            }
                                                            addr39:
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break loop10;
                                                         }
                                                         §'=§ = true;
                                                      }
                                                      while(!_loc2_)
                                                      {
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            if(!(_loc1_ || _loc2_))
                                                            {
                                                               continue loop4;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§`<§();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§!#+§());
                                                               if(_loc1_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                                  addr122:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr162);
                                                            addr158:
                                                         }
                                                      }
                                                      continue loop10;
                                                      addr84:
                                                      §§goto(addr39);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr192);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr157:
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr61);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr192);
            }
         }
         §§goto(addr110);
      }
      
      private function §!!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1"#§.gotoAndPlay("outro_start");
         }
         do
         {
            this.§1"#§.addEventListener(Event.ENTER_FRAME,this.§%V§);
            do
            {
               this.§[#D§.§+`§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private function §-"y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&#a§.visible = false;
            while(true)
            {
               this.§2"h§.setData(this.§?#7§);
               while(_loc1_)
               {
                  this.§'I§.visible = true;
                  loop2:
                  while(true)
                  {
                     this.§%Z§.visible = true;
                     while(true)
                     {
                        this.§'I§.gotoAndPlay("intro_start");
                        while(_loc1_)
                        {
                           continue loop2;
                           addr59:
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.§]#O§();
                              loop10:
                              for(; !_loc2_; this.§7T§(),if(!(_loc2_ && this))
                              {
                                 return;
                              })
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 addr90:
                                 while(true)
                                 {
                                    this.§3#H§();
                                    while(true)
                                    {
                                       this.§&#Q§();
                                       addr80:
                                       while(true)
                                       {
                                          this.§]#1§();
                                          break loop10;
                                       }
                                       addr52:
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr59);
                                    }
                                 }
                              }
                              while(_loc1_ || _loc1_)
                              {
                                 §§goto(addr52);
                              }
                              §§goto(addr80);
                           }
                        }
                     }
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  this.§%Z§.gotoAndPlay("intro_start");
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr76);
      }
      
      private function §?!J§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         if(!(_loc2_ && this))
         {
            this.§3!S§.mask = _loc1_;
         }
      }
      
      private function §^!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§6"6§.txtReward.text = "x" + this.§9A§.prizes[0].quantity;
         }
      }
      
      private function §&#Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §6"A§(this.§6"6§.trophy,this.§?#7§.r);
         }
      }
      
      private function §]#1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§?#7§.r > 3)
            {
               while(true)
               {
                  §@W§ = false;
                  addr70:
                  while(true)
                  {
                  }
               }
               addr67:
            }
            while(true)
            {
               this.§#x§();
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr67);
            }
         }
      }
      
      private function §]#O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6"6§.txtScore.text = this.§?#7§.p;
         }
      }
      
      private function §7T§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = this.§6"6§["star"];
         if(_loc3_)
         {
            _loc1_.gotoAndStop(this.§?#7§.s > 0 ? "true" : "false");
            do
            {
               this.§6"6§.txtStars.text = this.§?#7§.s + "/" + this.§9A§.maxStars;
            }
            while(_loc2_);
            
         }
      }
      
      private function §3#H§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:§5"$§ = null;
         if(_loc7_)
         {
            this.§%"]§ = new Vector.<§5"$§>();
         }
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < 3)
         {
            _loc2_ = this.§'I§["p" + (_loc1_ + 1)]["p" + (_loc1_ + 1)];
            if(!_loc6_)
            {
               if(_loc1_ < this.§9A§.players.length)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr69:
                     _loc2_.txtName.text = this.§9A§.players[_loc1_].n;
                     if(!(_loc6_ && this))
                     {
                        _loc2_.txtScore.text = this.§9A§.players[_loc1_].p;
                        if(!_loc7_)
                        {
                        }
                        addr206:
                        _loc1_++;
                        continue;
                     }
                     _loc3_ = _loc2_.txtName;
                     if(!(_loc6_ && _loc2_))
                     {
                        §6"#§.§7s§(_loc3_,int(_loc3_.getTextFormat().size),_loc3_.width,_loc3_.height);
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           (_loc2_.txtName as TextField).mouseEnabled = false;
                           while(_loc7_)
                           {
                              (_loc2_.txtScore as TextField).mouseEnabled = false;
                              if(_loc7_ || this)
                              {
                                 if(true)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                        _loc4_ = new §5"$§(this.§9A§.players[_loc1_].u);
                        if(_loc7_)
                        {
                           _loc2_.profile.addChild(_loc4_);
                           if(_loc7_)
                           {
                              _loc4_.scaleX = _loc4_.scaleY = 1.08;
                              if(_loc7_)
                              {
                                 addr186:
                                 this.§%"]§.push(_loc4_);
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr186);
                     }
                  }
               }
               else
               {
                  _loc2_.visible = false;
               }
               §§goto(addr206);
            }
            §§goto(addr69);
         }
      }
      
      private function §#x§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            if(!§@W§)
            {
               while(true)
               {
                  §§push(§1"z§.COMPONENT_STATE_DISABLED);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
                  while(true)
                  {
                  }
               }
               addr69:
            }
            do
            {
               (§^c§.getItemByName("Button_Celebrate") as §1"z§).setComponentState(_loc1_);
               if(!_loc2_)
               {
                  continue;
               }
            }
            while(!(_loc2_ || _loc2_));
            
            return;
         }
         §§goto(addr69);
      }
      
      private function §9#E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!G§.text = "x" + this.§1#O§;
         }
      }
      
      private function §%!S§() : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§9A§.players)
         {
            if(_loc5_)
            {
               if(_loc2_.u != §@#B§(§4#;§.singleton.dataModel).§9!N§.id)
               {
                  continue;
               }
            }
            _loc1_ = _loc2_;
         }
         if(!_loc6_)
         {
            if(!_loc1_)
            {
               if(!_loc6_)
               {
                  throw new Error("Player not found in previous tournament results.");
               }
            }
         }
         return _loc1_;
      }
      
      private function §>T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:String = null;
         if(_loc3_)
         {
            if(this.§5!P§)
            {
               if(!(_loc4_ && _loc1_))
               {
                  addr31:
                  _loc1_ = this.§5!P§.u;
               }
            }
            var _loc2_:* = int(this.§9A§.players.length - 1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() >= 0)
                     {
                        if(this.§9A§.players[_loc2_].u != this.§?#7§.u)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(!this.§5!P§);
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr210:
                                          while(true)
                                          {
                                             §§push(this.§5!P§.r > this.§9A§.players[_loc2_].r);
                                          }
                                       }
                                       addr209:
                                    }
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr156:
                                                while(true)
                                                {
                                                   §§push(§§pop() - 1);
                                                   addr157:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr158:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr154:
                                          }
                                          while(true)
                                          {
                                             this.§5!P§ = this.§9A§.players[_loc2_];
                                             loop9:
                                             while(true)
                                             {
                                                addr135:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§5!P§));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr76:
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_ == this.§5!P§.u);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     addr143:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        §§pop();
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               if(!(_loc3_ || _loc1_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  this.§5!P§ = null;
                                                                  addr105:
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr105);
                                                         }
                                                         return;
                                                         addr72:
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr158);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr128:
                              while(true)
                              {
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr135);
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr156);
               }
               §§goto(addr157);
            }
         }
         §§goto(addr31);
      }
      
      private function §!#+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(this.§5!P§));
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr96:
                     while(true)
                     {
                        §§push(Boolean(this.§?#7§));
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_ || this)
                           {
                              addr20:
                              if(this.§5!P§.r > this.§?#7§.r)
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                              }
                              §§push(false);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              continue;
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr20);
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr95);
               }
            }
            while(_loc1_ && _loc1_);
            
            return §§pop();
         }
         §§goto(addr96);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§[!j§ = null;
         var _loc5_:* = param2;
         if(_loc6_ || param2)
         {
            if("CLAIM" === _loc5_)
            {
               if(!_loc7_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     addr174:
                  }
               }
               else
               {
                  addr154:
                  §§push(1);
                  if(!_loc6_)
                  {
                  }
               }
            }
            else
            {
               if("CHALLENGE" === _loc5_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr154);
                  }
               }
               else if("CELEBRATE" !== _loc5_)
               {
                  addr179:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        addr44:
                        this.§!!3§();
                        break;
                        addr53:
                        addr47:
                     case 1:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        if(!_loc7_)
                        {
                           if(_loc6_ || param2)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 if(true)
                                 {
                                    _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§8i§);
                                    if(_loc6_)
                                    {
                                       §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,false);
                                    }
                                    break;
                                    addr129:
                                 }
                              }
                              else
                              {
                                 §§goto(addr53);
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr47);
                        }
                        break;
                     case 2:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        loop2:
                        while(true)
                        {
                           if(!(_loc7_ && param3))
                           {
                              addr120:
                              while(true)
                              {
                                 §""v§.§&R§("shareTournamentRank",this.§?#7§.r,this.§?#7§.p);
                                 addr104:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       break loop3;
                                    }
                                    continue loop2;
                                 }
                                 break loop3;
                                 §§goto(addr120);
                              }
                              addr94:
                           }
                           else
                           {
                              §§goto(addr129);
                           }
                        }
                        break;
                     default:
                        super.onUIInteraction(param1,param2,param3);
                        if(_loc6_ || this)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr104);
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr179);
               if(!_loc7_)
               {
                  §§goto(addr174);
               }
            }
            §§goto(addr179);
         }
         §§goto(addr154);
      }
      
      override protected function onTransitionInComplete() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.onTransitionInComplete();
            while(true)
            {
               this.§3"t§ = true;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§3!J§();
            if(_loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §9"2§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §1"R§.§%!E§.removeEventListener(§1"R§.CACHING_COMPLETE,this.§9"2§);
            while(true)
            {
               this.§&!'§ = true;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§3!J§();
            if(!(_loc2_ && this))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §-0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@W§ = false;
         }
         do
         {
            this.§#x§();
         }
         while(!_loc2_);
         
      }
      
      private function §!#-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[#D§.§ "f§();
            do
            {
               this.§2"H§();
            }
            while(_loc2_);
            
         }
      }
      
      private function §8#T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[#D§);
            loop0:
            while(true)
            {
               §§pop().§3"m§();
               addr90:
               loop1:
               while(true)
               {
                  this.§;!q§.visible = true;
                  loop2:
                  while(true)
                  {
                     §6"A§(this.§;!q§,this.§5!P§.r - 1);
                     while(!_loc3_)
                     {
                        continue loop0;
                        §§pop().§1!Q§(this.§5!P§.r - 1);
                        do
                        {
                           this.§>T§();
                        }
                        while(!_loc2_);
                        
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              return;
                              addr32:
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            addr89:
         }
         while(true)
         {
            §§push(this.§[#D§);
            if(!(_loc3_ && this))
            {
               §§goto(addr53);
            }
            else
            {
               §§goto(addr89);
            }
         }
         §§goto(addr32);
      }
      
      private function §2"H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§1#O§ < 40)
            {
               if(_loc1_ || this)
               {
                  this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizePerFriend;
                  addr90:
                  while(true)
                  {
                     this.§,#L§.gotoAndPlay("start");
                     while(true)
                     {
                     }
                  }
                  addr90:
               }
               §§goto(addr90);
            }
            do
            {
               this.§9#E§();
               if(_loc2_)
               {
                  continue;
               }
            }
            while(!(_loc1_ || _loc1_));
            
            return;
         }
         §§goto(addr90);
      }
      
      private function §""k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§?#7§.r > 3)
            {
               this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizeValues[3];
               loop4:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§'#Q§.gotoAndPlay("start");
                     while(!_loc2_)
                     {
                        this.§9#E§();
                        if(_loc1_ || _loc2_)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              break loop2;
                           }
                           continue loop4;
                        }
                     }
                     addr116:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  addr45:
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizeValues[this.§?#7§.r - 1];
                        §§goto(addr116);
                        §§goto(addr45);
                     }
                     addr89:
                  }
                  return;
               }
               addr83:
            }
            §§goto(addr89);
         }
         §§goto(addr83);
      }
      
      private function §4!c§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§5!P§)
            {
               loop0:
               do
               {
                  §§push(this.§4U§);
                  while(true)
                  {
                     §§pop().setData(this.§5!P§);
                     while(true)
                     {
                        §§push(this.§4U§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().§;n§();
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc3_ && _loc3_);
               
               addr58:
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §9S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5!P§)
            {
               §§push(Boolean(this.§5!P§));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr122:
                        loop3:
                        while(true)
                        {
                           §§push(this.§!#+§());
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              addr88:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 break loop3;
                                 §§goto(addr88);
                              }
                              addr19:
                              return;
                              addr38:
                              addr89:
                           }
                           continue loop6;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§[#D§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    §§pop().§%u§();
                                    do
                                    {
                                       this.§4U§.§2!I§();
                                    }
                                    while(!_loc2_);
                                    
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          addr91:
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr38);
                                    }
                                    loop5:
                                    while(_loc3_ && _loc2_)
                                    {
                                       while(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr128:
                                             this.§[#D§.§%u§();
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§2"H§();
                                             continue loop5;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr128);
                              }
                              addr95:
                              §§pop().§ "f§();
                              §§goto(addr96);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr95);
                     }
                     addr121:
                  }
                  §§goto(addr89);
               }
               §§goto(addr121);
            }
            §§goto(addr128);
         }
         §§goto(addr100);
      }
      
      private function §;5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[#D§.removeEventListener(§3?§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§;5§);
            loop0:
            while(true)
            {
               this.§]I§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               do
               {
                  this.§""k§();
                  continue loop0;
               }
               while(_loc2_);
               
            }
         }
      }
      
      private function §<"z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4U§.§["C§();
         }
      }
      
      private function §%V§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(Boolean(this.§1"#§.visible));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr88:
                     do
                     {
                        §§push(this.§1"#§.currentFrame == this.§1"#§.totalFrames - 1);
                        if(!(_loc3_ || param1))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     if(!(_loc2_ && param1))
                     {
                        addr68:
                        this.§-"y§();
                     }
                     else
                     {
                        §§goto(addr88);
                     }
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      override public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5"$§ = null;
         if(_loc5_)
         {
            if(this.§%"]§)
            {
               §§goto(addr25);
            }
            §§goto(addr88);
         }
         addr25:
         for each(_loc1_ in this.§%"]§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || this)
         {
            this.§%"]§.splice(0,this.§%"]§.length);
            loop3:
            while(true)
            {
               this.§%"]§ = null;
               addr86:
               addr88:
               while(_loc4_)
               {
                  continue loop3;
               }
               while(true)
               {
                  §""v§.§&z§("tournamentRankShared",this.§-0§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr86);
                  §§goto(addr88);
               }
            }
         }
      }
   }
}
