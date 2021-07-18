package §!"e§
{
   import §+!!§.§9"i§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §2"§.§"u§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class EnergyOutPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "EnergyOutPopup";
      
      private static const §7%§:uint = 2;
      
      private static const §5=§:uint = 1;
      
      private static const §"#C§:uint = 0;
      
      private static const §1!-§:int = 10;
      
      private static const §+#J§:int = 159;
      
      private static const §%";§:int = 15;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §%!h§ = "EnergyOutPopup";
            loop0:
            while(true)
            {
               §7%§ = 2;
               loop1:
               while(true)
               {
                  §5=§ = 1;
                  loop2:
                  while(true)
                  {
                     §"#C§ = 0;
                     while(!_loc1_)
                     {
                        §1!-§ = 10;
                        while(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              §+#J§ = 159;
                              loop5:
                              while(!(_loc1_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    §%";§ = 15;
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private var §7"P§:Number;
      
      private var §-#"§:String;
      
      private var §;![§:String;
      
      private var §3_§:TextField;
      
      private var §2!^§:TextField;
      
      private var §4#J§:§@#B§;
      
      private var §+!b§:§[#;§;
      
      private var §7"I§:int;
      
      private var §%"6§:Boolean;
      
      private var §["X§:Boolean;
      
      public function EnergyOutPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_EnergyOut[0],§%!h§);
         }
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%"6§ = false;
            loop0:
            while(true)
            {
               this.§["X§ = false;
               addr72:
               while(true)
               {
                  this.§7"I§ = -1;
               }
               loop4:
               while(true)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     continue loop0;
                  }
                  this.§4#J§.§6!G§.addEventListener(Event.CHANGE,this.§1!=§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr36:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
                           continue loop4;
                        }
                        addr77:
                        var _loc1_:MovieClip = §^c§.getItemByName("Container_Popup").mClip;
                        §§push(_loc3_ || _loc1_);
                        addr47:
                     }
                     else
                     {
                        §§goto(addr77);
                     }
                     if(§§pop())
                     {
                        this.§2!^§ = TextField(_loc1_.titleEnergy);
                        loop5:
                        while(true)
                        {
                           this.§3_§ = TextField(_loc1_.crystalTime);
                           loop6:
                           while(true)
                           {
                              this.§-#"§ = §^"N§.getLocalizedString("energy_out_time_to_next");
                              loop7:
                              while(true)
                              {
                                 this.§;![§ = §^"N§.getLocalizedString("energy_out_title_zero_energy");
                                 loop8:
                                 while(true)
                                 {
                                    this.§2!^§.text = this.§;![§;
                                    loop9:
                                    while(true)
                                    {
                                       this.§7"P§ = 0;
                                       loop10:
                                       for(; !_loc2_; while(_loc3_ || _loc1_)
                                       {
                                          continue loop9;
                                          if(_loc3_ || _loc2_)
                                          {
                                             return;
                                             addr117:
                                          }
                                       })
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          §^c§.mClip.addEventListener(Event.ENTER_FRAME,this.§"#5§);
                                          while(true)
                                          {
                                             this.§"#5§();
                                             continue loop10;
                                          }
                                       }
                                       continue loop8;
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       this.§-!9§();
                                       loop13:
                                       while(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§!!F§();
                                                   if(_loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr117);
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr154);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr127);
                  }
                  while(true)
                  {
                     §§goto(addr47);
                     §§goto(addr36);
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr67);
      }
      
      protected function §-!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§4#J§);
            loop0:
            while(true)
            {
               §§push(§§pop().§^"J§);
               loop1:
               while(true)
               {
                  if(!§§pop().§#4§())
                  {
                     this.§7"I§ = this.§4#J§.§6!G§.gifts.length;
                     loop2:
                     while(!_loc1_)
                     {
                        this.§%"6§ = true;
                        do
                        {
                           this.§["X§ = false;
                           do
                           {
                              this.§!!F§();
                           }
                           while(!(_loc2_ || _loc2_));
                           
                        }
                        while(_loc1_);
                        
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(!(_loc1_ && this))
                        {
                           if(_loc1_)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§4#J§);
                                 loop6:
                                 while(_loc2_)
                                 {
                                    §§push(§§pop().§^"J§);
                                    if(!_loc1_)
                                    {
                                       §§pop().§^"4§();
                                       while(true)
                                       {
                                          §§push(this.§4#J§);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§pop().§6!G§.update();
                                             break loop2;
                                          }
                                          continue loop6;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                                 addr131:
                                 while(true)
                                 {
                                    this.§["X§ = true;
                                    continue loop5;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr115);
                     }
                     while(true)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           §§goto(addr131);
                        }
                        §§goto(addr105);
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      private function §1!=§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%"6§ = true;
            while(true)
            {
               this.§["X§ = false;
               while(_loc2_ || _loc2_)
               {
                  this.§7"I§ = this.§4#J§.§6!G§.gifts.length;
                  do
                  {
                     this.§!!F§();
                  }
                  while(_loc3_ && this);
                  
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §>`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%"6§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§7"I§ > 0);
                     if(!(_loc1_ && this))
                     {
                        §§goto(addr52);
                     }
                     §§goto(addr58);
                  }
               }
               §§goto(addr78);
            }
            addr52:
            if(§§pop())
            {
               if(_loc2_)
               {
                  §§push(true);
                  if(!_loc1_)
                  {
                     addr58:
                  }
                  §§goto(addr77);
               }
               else
               {
                  addr78:
                  return false;
               }
            }
            else
            {
               §§push(false);
               if(!(_loc1_ && _loc1_))
               {
                  addr77:
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr78);
      }
      
      protected function §!!F§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         var _loc1_:§^"m§ = §^"m§(§^c§.getItemByName("Button_CheckInbox"));
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§%"6§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  _loc1_.setEnabled(false);
                  loop0:
                  while(!(_loc3_ && _loc1_))
                  {
                     if(!(_loc3_ && this))
                     {
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              if(this.§["X§)
                              {
                                 addr45:
                                 §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                    addr68:
                                    §§pop().setComponentState(§§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr34);
                                       }
                                       else
                                       {
                                          addr173:
                                       }
                                       §§push(this.§>`§());
                                       if(_loc4_)
                                       {
                                          addr177:
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc2_ = §§pop();
                                    }
                                    _loc1_.setEnabled(_loc2_);
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          addr123:
                                          §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || this)
                                             {
                                                addr151:
                                                §§pop().setComponentState(§§pop());
                                                break loop0;
                                             }
                                             §§goto(addr151);
                                          }
                                          addr150:
                                          §§push(§§pop());
                                       }
                                       else
                                       {
                                          §§push(§1"z§.§4"o§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr150);
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr123);
                                 }
                              }
                              else
                              {
                                 §§push(§1"z§.§4"o§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                              §§goto(addr68);
                           }
                           §§goto(addr45);
                        }
                        addr111:
                     }
                     §§goto(addr157);
                  }
                  addr34:
                  return;
               }
               §§goto(addr173);
            }
            §§goto(addr177);
         }
         §§goto(addr111);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4#J§.§6!G§.removeEventListener(Event.CHANGE,this.§1!=§);
            do
            {
               §^c§.mClip.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
               do
               {
                  super.dispose();
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_);
            
         }
      }
      
      private function §"#5§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§3_§.text = this.§-#"§ + " " + this.§<#3§(this.§4#J§.§^"J§.§]"w§,§5=§);
         }
         var _loc2_:int = getTimer();
         §§push(this.§7"P§);
         if(_loc5_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ <= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(§1!-§ * 1000);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + _loc3_);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr120:
                        §§push(§§pop() + _loc2_);
                     }
                     §§pop().§7"P§ = §§pop();
                     while(true)
                     {
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr120);
               }
            }
            addr65:
            while(this.§4#J§.§^"J§.§]"w§ < 1)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     close(true);
                     continue loop0;
                  }
                  continue loop1;
                  continue;
               }
               continue loop0;
            }
            addr61:
            return;
         }
         §§goto(addr86);
      }
      
      private function §<#3§(param1:int, param2:uint = 2) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:uint = Math.floor(param1 / 3600);
         §§push(param1 - _loc3_ * 3600);
         if(!_loc10_)
         {
            §§push(§§pop() / 60);
         }
         var _loc4_:uint = §§pop();
         §§push(param1 - _loc3_ * 3600);
         if(!(_loc10_ && param1))
         {
            §§push(§§pop() - _loc4_ * 60);
         }
         var _loc5_:uint = §§pop();
         if(!(_loc10_ && _loc3_))
         {
            §§push(param2);
            if(_loc9_ || this)
            {
               if(§§pop() == §7%§)
               {
                  addr71:
                  §§push(_loc3_ + ":");
                  if(_loc10_)
                  {
                  }
               }
               else
               {
                  §§push("");
               }
               var _loc6_:String = §§pop();
               if(_loc9_ || this)
               {
                  §§push(param2);
                  if(_loc9_)
                  {
                     §§push(§5=§);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop() >= §§pop());
                        if(!(_loc10_ && param1))
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(param2);
                                 if(!_loc10_)
                                 {
                                    addr127:
                                    addr126:
                                    §§push(§§pop() == §7%§);
                                    if(!_loc10_)
                                    {
                                       addr130:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || this)
                                          {
                                             §§pop();
                                             addr151:
                                             if(!(_loc10_ && param2))
                                             {
                                                addr148:
                                                §§push(_loc4_ < 10);
                                             }
                                             §§push("0" + _loc4_ + ":");
                                             if(!_loc10_)
                                             {
                                                addr171:
                                                var _loc7_:String = §§pop();
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() < 10);
                                                      if(!_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§pop();
                                                               §§goto(addr198);
                                                            }
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr198);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                addr198:
                                                if(!_loc10_)
                                                {
                                                   addr195:
                                                   §§push(param2 >= §5=§);
                                                }
                                                var _loc8_:String = "0" + _loc5_;
                                                return _loc6_ + _loc7_ + _loc8_;
                                                addr169:
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr151);
                                    }
                                    else
                                    {
                                       §§push("");
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§goto(addr151);
                                          §§push(§§pop());
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                              }
                              §§goto(addr148);
                           }
                           else
                           {
                              §§push("");
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr126);
               }
               §§goto(addr151);
            }
         }
         §§goto(addr71);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§[!j§ = null;
         var _loc5_:* = param2.toUpperCase();
         if(!_loc6_)
         {
            if("ASK" === _loc5_)
            {
               if(_loc7_)
               {
                  §§push(0);
                  if(_loc6_ && param2)
                  {
                     addr170:
                  }
               }
               else
               {
                  addr174:
                  §§push(2);
                  if(!_loc6_)
                  {
                     addr177:
                  }
               }
               §§goto(addr192);
            }
            else
            {
               if("SHOP" !== _loc5_)
               {
                  if("INBOX" === _loc5_)
                  {
                     §§goto(addr174);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr192:
                  switch(§§pop())
                  {
                     case 0:
                        _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.§>!g§,§9"i§.§%!§);
                        if(!(_loc6_ && this))
                        {
                           §4#;§.singleton.popupManager.openPopup(_loc4_,false,true,false,true);
                           break;
                           addr86:
                        }
                        §§goto(addr199);
                     case 1:
                        §9#B§(§4#;§.singleton.popupManager).§@"3§(1);
                        dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              return;
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr199);
                     case 2:
                        _loc4_ = new §"u§(this.§+!b§,§`"W§.§+v§,§+5§.§>!g§);
                        if(!(_loc6_ && param1))
                        {
                           §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
                           if(_loc7_ || this)
                           {
                              return;
                           }
                        }
                  }
                  super.onUIInteraction(param1,param2,param3);
                  addr199:
                  return;
               }
               if(!(_loc6_ && param3))
               {
                  §§push(1);
                  if(_loc7_ || param2)
                  {
                     §§goto(addr170);
                  }
                  else
                  {
                     §§goto(addr177);
                  }
               }
               else
               {
                  §§goto(addr174);
               }
               §§goto(addr192);
            }
         }
         §§goto(addr174);
      }
   }
}
