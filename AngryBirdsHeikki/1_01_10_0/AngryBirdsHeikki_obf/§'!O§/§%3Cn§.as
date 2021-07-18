package §'!O§
{
   import §'!N§.§25§;
   import §'!N§.§2O§;
   import §'!N§.§<i§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§;F§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9I§.§+J§;
   import §9I§.§>!=§;
   import §9b§.§"!S§;
   import §<!!§.§#!`§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§'!4§;
   import §=! §.§9>§;
   import §^!5§.§,4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §<n§ extends §=j§ implements §>!=§
   {
      
      public static const §@o§:String = "LevelSelectionStateHeikki";
      
      private static const §=!R§:Number = 3000;
      
      private static const §-!8§:Number = 1.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@o§ = "LevelSelectionStateHeikki";
            while(true)
            {
               §=!R§ = 3000;
               while(!(_loc2_ && §<n§))
               {
                  §-!8§ = 1.5;
                  if(_loc2_ && §<n§)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      private var §9m§:Number = 3000;
      
      private var §%;§:§;F§ = null;
      
      private const §5y§:Boolean = true;
      
      private var §@!;§:Boolean = false;
      
      private var §5!4§:String = "";
      
      private var §"!A§:Number;
      
      private var §7%§:Boolean = false;
      
      private var §2!B§:Vector.<§&[§> = null;
      
      private var §1v§:Vector.<GlowFilter> = null;
      
      private var §9V§:String = "";
      
      public function §<n§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            loop0:
            while(true)
            {
               §4!N§ = new §-k§(75,0,0,1);
               addr136:
               while(true)
               {
                  §]!9§ = new §]!Q§(this);
                  addr116:
                  while(true)
                  {
                     §]!9§.init(§;A§.§=I§.Views.View_LevelSelectionHeikki[0]);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               §§push(this.§7%§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        this.§7%§ = true;
                        addr272:
                        while(true)
                        {
                           §9>§.§>%§(§9>§.§8W§);
                           addr252:
                           while(true)
                           {
                           }
                        }
                        addr272:
                     }
                     §§goto(addr272);
                  }
                  while(true)
                  {
                     §§push(§"!S§.§-!7§);
                     addr244:
                     while(true)
                     {
                        §§push(false);
                        addr245:
                        while(true)
                        {
                           §§pop().§3g§(§§pop());
                           addr246:
                           while(true)
                           {
                              sHighscoreSidebar.enableHighScoreTab(true);
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr272);
      }
      
      private function §`!5§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!§,L§.§8!F§.§"!1§)
            {
               loop0:
               while(true)
               {
                  this.§9V§ = ((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).getText();
                  loop1:
                  while(true)
                  {
                     ((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).setText(param1);
                     addr176:
                     while(true)
                     {
                        §§push(param1);
                        addr150:
                        while(true)
                        {
                           §§push("");
                           addr151:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §]!9§.setText(param1,"TextField_Unlock_Code");
                                 }
                                 (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.setSelection(0,param1.length);
                                 (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
                                 addr147:
                                 addr162:
                              }
                           }
                        }
                     }
                  }
               }
            }
            loop2:
            while(true)
            {
               §]!9§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§,L§.§8!F§.§"!1§);
               loop3:
               while(_loc2_)
               {
                  §]!9§.getItemByName("Container_CodeActivated").setVisibility(§,L§.§8!F§.§"!1§);
                  for(; !(_loc3_ && this); if(_loc3_ && _loc3_)
                  {
                     continue;
                  },if(_loc2_ || param1)
                  {
                     if(!_loc3_)
                     {
                        break loop2;
                     }
                  },§§goto(addr147))
                  {
                     §§push(this.§5!4§);
                     if(!(_loc3_ && this))
                     {
                        §§push("");
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §]!9§.setText("","TextField_ActiveUntil");
                              if(!(_loc2_ || param1))
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                           }
                           if(_loc2_)
                           {
                              §]!9§.setText("Active until: " + this.§5!4§,"TextField_ActiveUntil");
                              continue;
                           }
                           continue loop3;
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr176);
               }
               §§goto(addr162);
            }
            return;
         }
         §§goto(addr176);
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
         }
         do
         {
            §]!9§.setText(this.§9V§,"TextField_Unlock_Code");
         }
         while(!_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
            while(true)
            {
               this.§^t§();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super.deActivate();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §^t§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         loop0:
         while(_loc1_ <= this.§1v§.length)
         {
            this.§1v§[_loc1_ - 1] = null;
            if(!_loc4_)
            {
               break;
            }
            _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
            if(_loc4_)
            {
               _loc2_.TextField_Date.filters = [];
               while(true)
               {
                  if(this.§2!B§[_loc1_ - 1] is §&[§)
                  {
                     while(true)
                     {
                        (this.§2!B§[_loc1_ - 1] as §&[§).§2=§();
                        addr100:
                        while(true)
                        {
                        }
                     }
                     addr92:
                  }
                  loop4:
                  while(true)
                  {
                     this.§2!B§[_loc1_ - 1] = null;
                     while(_loc4_ || _loc1_)
                     {
                        if(_loc4_)
                        {
                           _loc1_++;
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 break loop4;
                                 addr64:
                              }
                              while(false)
                              {
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr100);
                  }
               }
            }
            §§goto(addr64);
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         }
      }
      
      private function §3&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         loop0:
         while(_loc1_ <= HighscoreSidebar.§"!P§.length)
         {
            _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
            if(!(_loc4_ && _loc2_))
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
               loop1:
               while(true)
               {
                  if(!§4!_§.§]#§(HighscoreSidebar.§"!P§[_loc1_ - 1]))
                  {
                     (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).scaleOnMouseOver = false;
                     loop2:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).mClip.useHandCursor = false;
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§&!`§[_loc1_ - 1];
                                    loop4:
                                    while(true)
                                    {
                                       _loc2_.TextField_Date.text.text = HighscoreSidebar.§2g§[_loc1_ - 1];
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             _loc2_.TextField_Date.visible = true;
                                             continue loop2;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                _loc2_.TextField_Date.visible = false;
                                                loop11:
                                                while(true)
                                                {
                                                   _loc3_ = §,L§.§8!F§.§2!a§(HighscoreSidebar.§"!P§[_loc1_ - 1]);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
                                                      addr217:
                                                      while(true)
                                                      {
                                                         this.§5!4§ = HighscoreSidebar.§2g§[_loc1_];
                                                         addr206:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc1_++;
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_.MovieClip_Stars.visible = false;
                                                                        break loop10;
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr208);
                                                               }
                                                               addr208:
                                                               while(!(_loc4_ && this))
                                                               {
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr42);
                                                               }
                                                               addr42:
                                                               continue loop4;
                                                               addr64:
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr248:
                                             }
                                             else
                                             {
                                                loop15:
                                                while(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).scaleOnMouseOver = true;
                                                      addr295:
                                                      while(true)
                                                      {
                                                         (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).mClip.useHandCursor = true;
                                                         addr276:
                                                         while(true)
                                                         {
                                                            _loc2_.MovieClip_Lock.visible = false;
                                                            continue loop15;
                                                         }
                                                      }
                                                   }
                                                }
                                                _loc2_.MovieClip_Stars.visible = true;
                                             }
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop14;
                                                }
                                                continue loop14;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr276);
                              if(_loc4_ && _loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr59);
                           }
                        }
                        §§goto(addr206);
                     }
                  }
                  §§goto(addr286);
               }
            }
            §§goto(addr295);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(this.§5y§)
                     {
                        this.§3x§(param1);
                        loop1:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§push(this);
                              §§push(§]!9§.getItemByName("MovieClip_Visor") as §25§);
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().§'H§(§§pop(),§§pop(),true);
                              loop2:
                              while(true)
                              {
                                 addr78:
                                 loop3:
                                 while(true)
                                 {
                                    this.§#f§();
                                    while(mNextState.length > 0)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop3;
                                                }
                                                addr138:
                                                §§goto(addr110);
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr26:
                                    return §=p§.STATE_STATUS_RUNNING;
                                 }
                                 if(_loc3_ || _loc3_)
                                 {
                                    return §=p§.STATE_STATUS_COMPLETED;
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr78);
                           }
                        }
                     }
                     addr110:
                     while(_loc3_ || param1)
                     {
                        while(true)
                        {
                           §"!S§.§]O§.update(param1);
                        }
                     }
                     return _loc2_;
                  }
               }
            }
            §§goto(addr138);
         }
         §§goto(addr117);
      }
      
      private function §#f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§1v§[_loc1_ - 1] != null)
            {
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
               if(!_loc4_)
               {
                  _loc2_.TextField_Date.filters = [this.§1v§[_loc1_ - 1]];
               }
            }
            _loc1_++;
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = null;
         if(!(_loc9_ && param1))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:String = "";
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc9_ && param1))
            {
               if(§§pop() < HighscoreSidebar.§"!P§.length)
               {
                  §§push(param2);
                  if(_loc8_)
                  {
                     if(§§pop() == "LVL" + (_loc5_ + 1))
                     {
                        if(_loc8_ || param3)
                        {
                           if(!§4!_§.§]#§(§,4§.§`Y§(HighscoreSidebar.§"!P§[_loc5_])))
                           {
                              this.§;!!§(_loc5_ + 1);
                              addr153:
                              _loc5_++;
                              continue;
                              addr164:
                           }
                           §§goto(addr153);
                        }
                        loop2:
                        while(true)
                        {
                           §<r§.§>!D§ = StatePlay.§@o§;
                           loop3:
                           while(true)
                           {
                              §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§"!P§[_loc5_]));
                              addr187:
                              while(true)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           mNextState = StateCutScene.§@o§;
                           addr170:
                           while(true)
                           {
                              if(!(_loc9_ && this))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr153);
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        var _loc7_:* = §§pop();
                        if(_loc8_)
                        {
                           if("UNLOCK_POWER_UP" === _loc7_)
                           {
                              if(_loc8_ || param2)
                              {
                                 addr244:
                                 §§push(0);
                                 if(!_loc9_)
                                 {
                                    addr293:
                                    loop6:
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).getText());
                                             if(_loc8_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc8_ || this))
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             addr135:
                                             if(!(_loc9_ && param1))
                                             {
                                                this.§[!d§(_loc6_);
                                                if(_loc8_ || this)
                                                {
                                                   break loop6;
                                                }
                                                break loop6;
                                             }
                                             §§goto(addr164);
                                             break;
                                          case 1:
                                             StateCutScene.§1c§ = true;
                                             addr74:
                                             if(_loc8_ || param1)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr62:
                                                   mNextState = StateCutScene.§@o§;
                                                   break loop6;
                                                   addr67:
                                                }
                                                else
                                                {
                                                   §§goto(addr187);
                                                }
                                             }
                                             else
                                             {
                                                while(_loc8_)
                                                {
                                                   §§push(param2);
                                                   continue loop1;
                                                }
                                                addr109:
                                             }
                                             §§goto(addr170);
                                          case 2:
                                             navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
                                             if(!(_loc9_ && param2))
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(true)
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr135);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr74);
                                                   }
                                                   §§goto(addr62);
                                                }
                                                §§goto(addr67);
                                             }
                                       }
                                       §§goto(addr153);
                                    }
                                    return;
                                    addr294:
                                 }
                              }
                              else
                              {
                                 addr258:
                                 §§push(1);
                                 if(_loc9_ && param3)
                                 {
                                    addr288:
                                 }
                              }
                              §§goto(addr293);
                           }
                           else
                           {
                              if("CUT_SCENE" === _loc7_)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr258);
                                 }
                              }
                              else if("FACEBOOK_LINK" !== _loc7_)
                              {
                                 §§goto(addr293);
                                 §§push(3);
                              }
                              §§goto(addr293);
                              if(_loc8_ || this)
                              {
                                 §§goto(addr288);
                              }
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr244);
                     }
                  }
                  §§goto(addr153);
               }
               §§goto(addr109);
            }
            §§goto(addr294);
         }
      }
      
      private function §;!!§(param1:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = §]!9§.getItemByName("Button_" + param1).mClip;
         if(!_loc4_)
         {
            §§push(this.§2!B§[param1 - 1] is §&[§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr56);
               }
               §§goto(addr59);
            }
            addr52:
            if((this.§2!B§[param1 - 1] as §&[§).isCompleted == false)
            {
               if(_loc5_)
               {
                  addr56:
                  return;
               }
            }
            else
            {
               addr59:
               if(this.§1v§[param1 - 1] == null)
               {
                  if(_loc5_ || param1)
                  {
                     this.§1v§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
                  }
               }
            }
            var _loc3_:§&[§ = §"!X§.§ s§.§0<§(§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":4},{"strength":0},§-!8§ / 4,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":0},{"strength":4},§-!8§ / 4,§"!X§.§=!K§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":4},{"strength":0},§-!8§ / 4,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":0},{"strength":4},§-!8§ / 4,§"!X§.§=!K§));
            if(!(_loc4_ && _loc2_))
            {
               _loc3_.play();
               do
               {
                  this.§2!B§[param1 - 1] = _loc3_;
               }
               while(!(_loc5_ || param1));
               
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §3x§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push((§]!9§.getItemByName("MovieClip_Visor") as §25§).§&A§);
            loop0:
            while(true)
            {
               if(§§pop() == false)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§"!A§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§"!A§ = §§pop();
                     loop2:
                     while(true)
                     {
                        if(this.§"!A§ > this.§9m§)
                        {
                           if(_loc2_ || param1)
                           {
                              this.§"!A§ = 0;
                           }
                           loop3:
                           while(true)
                           {
                              (§]!9§.getItemByName("MovieClip_Visor") as §25§).§<v§("Start");
                              (§]!9§.getItemByName("MovieClip_Visor") as §25§).§&A§ = true;
                              addr118:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    (§]!9§.getItemByName("MovieClip_Visor") as §25§).setVisibility(true);
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(false);
            if(!(_loc3_ && _loc3_))
            {
               break;
            }
            §§goto(addr38);
         }
         return §§pop();
      }
      
      private function §'H§(param1:§25§, param2:Number, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         if(!(_loc5_ && param2))
         {
            §§push(param1.§&A§);
            loop0:
            while(true)
            {
               if(§§pop() == true)
               {
                  while(true)
                  {
                     §§push(param1.§>Z§(param2));
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           addr96:
                           §§push(_loc4_ = §§pop());
                        }
                        if(§§pop() != "End")
                        {
                           break;
                        }
                        while(true)
                        {
                           param1.§&A§ = false;
                           continue loop0;
                        }
                     }
                     §§goto(addr96);
                  }
                  addr73:
               }
               §§goto(addr28);
            }
            addr71:
         }
         while(true)
         {
            §§push(param3);
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        param1.setVisibility(false);
                        §§goto(addr66);
                     }
                     §§goto(addr100);
                  }
                  addr66:
                  if(_loc6_)
                  {
                     §§goto(addr28);
                  }
                  else
                  {
                     §§goto(addr73);
                  }
               }
            }
            else
            {
               §§goto(addr71);
            }
            addr28:
            return;
         }
      }
      
      private function §[!d§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§#!`§ = null;
         if(_loc5_)
         {
            §§push(this.§@!;§);
            loop0:
            while(true)
            {
               §§push(false);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                  }
                  addr101:
               }
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           addr63:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() == "Incorrect code");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(param1);
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() == "Code already used");
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr101);
                                                   }
                                                }
                                                continue loop6;
                                                addr87:
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  loop11:
                  while(§§pop())
                  {
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           _loc2_ = "code";
                           if(true)
                           {
                              _loc3_ = {
                                 "playerId":§4!_§.§,t§.§5!D§,
                                 "code":param1
                              };
                              _loc4_ = new §#!`§(_loc3_,§,L§.§2;§ + _loc2_,this,§#!`§.§`!1§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 this.§@!;§ = true;
                                 break loop11;
                              }
                              break loop11;
                           }
                           §§goto(addr63);
                        }
                        addr59:
                     }
                     §§goto(addr87);
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         if(_loc5_ || _loc2_)
         {
            this.§@!;§ = false;
            loop0:
            while(true)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr177:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr179:
                           while(true)
                           {
                              §§push(_loc2_.powerUp == true);
                              while(!(_loc4_ && this))
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(_loc2_));
                           if(!_loc4_)
                           {
                              §§goto(addr103);
                           }
                           else
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 loop8:
                                 while(_loc5_ || this)
                                 {
                                    addr134:
                                    §§push(_loc2_.error == "CODE_USED");
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             _loc3_ = "Incorrect code";
                                             this.§`!5§(_loc3_);
                                             addr52:
                                             if(!_loc5_)
                                             {
                                                §§goto(addr52);
                                             }
                                             break;
                                          }
                                          if(_loc4_ && param1)
                                          {
                                             continue loop9;
                                             continue loop8;
                                          }
                                          if(!_loc4_)
                                          {
                                             addr93:
                                             _loc3_ = "Code already used";
                                             do
                                             {
                                                this.§`!5§(_loc3_);
                                             }
                                             while(_loc4_ && this);
                                             
                                             break;
                                          }
                                          addr149:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break loop6;
                                          }
                                          §§goto(addr179);
                                          §§goto(addr134);
                                       }
                                       addr36:
                                       return;
                                       addr72:
                                    }
                                    continue loop9;
                                 }
                                 addr160:
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr36);
                              }
                              addr126:
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr149);
                     }
                     §,L§.§8!F§.§"!1§ = true;
                     §§goto(addr160);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!5§("Incorrect code");
            do
            {
               this.§@!;§ = false;
            }
            while(_loc3_);
            
         }
      }
   }
}
