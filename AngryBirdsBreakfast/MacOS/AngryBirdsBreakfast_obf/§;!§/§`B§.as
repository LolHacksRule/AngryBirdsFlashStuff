package §;!§
{
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §#![§.§%!W§;
   import §&v§.§#!R§;
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§[!x§;
   import com.angrybirds.§&!"§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §`B§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §`B§))
         {
            §-!q§ = "LevelSelectionState";
         }
      }
      
      public function §`B§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param4,param5,param2);
         }
      }
      
      protected function §`!K§() : XML
      {
         return §4!=§.§'!u§(§#"0§.§+#§.Views.ViewLevelSelectionCustom[0]);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               while(!(_loc2_ && _loc1_))
               {
                  §?P§.init(this.§`!K§());
                  do
                  {
                     §?P§.movieClip.cacheAsBitmap = true;
                  }
                  while(_loc2_);
                  
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §`!2§.§?>§();
               while(true)
               {
                  §&!"§.§1!D§.§"!Q§(false);
                  loop2:
                  for(; !(_loc2_ && this); while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§+1§();
                        §§goto(addr99);
                     }
                  })
                  {
                     §§push(§6!!§.singleton);
                     while(true)
                     {
                        §§pop().§%![§.§[!"§();
                        continue loop2;
                        addr87:
                        §§push(§6!!§.singleton);
                        if(_loc2_)
                        {
                           continue;
                        }
                        (§§pop() as §4!=§).§"!<§();
                        loop9:
                        while(true)
                        {
                           §&" §.resetCurrentLevel();
                           loop10:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr40:
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       addr99:
                                       while(true)
                                       {
                                          §?P§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
                                       }
                                    }
                                    while(true)
                                    {
                                       §?P§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
                                       break loop10;
                                    }
                                 }
                                 break;
                              }
                              continue loop9;
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr87);
                              §§goto(addr40);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
         }
      }
      
      private function §+1§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= §%!W§.§9!v§.length)
         {
            _loc2_ = §?P§.getItemByName("Button_Level" + _loc1_).mClip;
            if(_loc4_)
            {
               _loc2_.TextField_LevelNum.text.mouseEnabled = false;
               loop1:
               while(true)
               {
                  if(§`!2§.§'!d§(§%!W§.§9!v§[_loc1_ - 1]))
                  {
                     loop4:
                     while(true)
                     {
                        (§?P§.getItemByName("Button_Level" + _loc1_) as §;§).mClip.useHandCursor = true;
                        while(true)
                        {
                           _loc2_.MovieClip_Lock.visible = false;
                           while(_loc4_)
                           {
                              _loc2_.MovieClip_Stars.visible = true;
                              loop7:
                              while(!(_loc5_ && this))
                              {
                                 _loc2_.TextField_LevelNum.text.text = §%!W§.§?&§[_loc1_ - 1];
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§6!!§.singleton.§<!S§.userProgress.§9"+§(§%!W§.§9!v§[_loc1_ - 1]));
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                    addr150:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     (§?P§.getItemByName("Button_Level" + _loc1_) as §;§).mClip.useHandCursor = false;
                  }
                  while(true)
                  {
                     _loc2_.TextField_LevelNum.text.text = §%!W§.§?&§[_loc1_ - 1];
                     continue loop1;
                     §§goto(addr64);
                  }
               }
            }
            while(true)
            {
               _loc2_.MovieClip_Lock.visible = true;
               §§goto(addr64);
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("C1_LEVEL_1" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr468);
               }
               else
               {
                  §§goto(addr406);
               }
            }
            else if("C1_LEVEL_2" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  addr364:
                  §§push(4);
                  if(_loc6_)
                  {
                     addr367:
                  }
                  else
                  {
                     addr423:
                  }
               }
            }
            else if("C1_LEVEL_3" === _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(2);
                  if(_loc5_ && this)
                  {
                     addr395:
                  }
               }
               else
               {
                  addr443:
                  §§push(10);
                  if(!_loc5_)
                  {
                     §§goto(addr446);
                  }
               }
            }
            else if("C1_LEVEL_4" === _loc4_)
            {
               if(!(_loc5_ && param3))
               {
                  §§push(3);
                  if(_loc5_ && param1)
                  {
                     §§goto(addr367);
                  }
               }
               else
               {
                  addr387:
                  §§push(6);
                  if(_loc6_ || this)
                  {
                     §§goto(addr395);
                  }
                  else
                  {
                     §§goto(addr423);
                  }
               }
            }
            else if("C1_LEVEL_5" === _loc4_)
            {
               if(!(_loc5_ && param3))
               {
                  §§goto(addr364);
               }
               else
               {
                  addr373:
                  §§push(5);
                  if(_loc5_)
                  {
                     addr463:
                  }
               }
            }
            else if("C1_LEVEL_6" === _loc4_)
            {
               if(!_loc5_)
               {
                  §§goto(addr373);
               }
               else
               {
                  addr406:
                  §§push(7);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr468);
               }
            }
            else if("C1_LEVEL_7" === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  §§goto(addr387);
               }
               else
               {
                  addr420:
                  §§push(8);
                  if(!_loc6_)
                  {
                     §§goto(addr463);
                  }
                  §§goto(addr468);
               }
            }
            else
            {
               if("BUTTON_BACK" === _loc4_)
               {
                  if(_loc6_ || this)
                  {
                     §§goto(addr406);
                  }
               }
               else if("BUTTON_QUIT" === _loc4_)
               {
                  if(!(_loc5_ && param3))
                  {
                     §§goto(addr420);
                  }
               }
               else if("BUTTON_MUTE" === _loc4_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(9);
                     if(_loc6_)
                     {
                        §§goto(addr468);
                     }
                     else
                     {
                        §§goto(addr446);
                     }
                  }
                  else
                  {
                     §§goto(addr443);
                  }
               }
               else if("BUTTON_CREDITS" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr443);
                  }
               }
               else if("BUTTON_FULLSCREEN" !== _loc4_)
               {
                  addr468:
                  switch(§§pop())
                  {
                     case 0:
                        this.§<!_§("1-1");
                        break;
                        addr290:
                     case 1:
                        this.§<!_§("1-2");
                        break;
                        addr284:
                     case 2:
                        this.§<!_§("1-3");
                        break;
                        addr277:
                     case 3:
                        this.§<!_§("1-4");
                        break;
                        addr270:
                     case 4:
                        this.§<!_§("1-5");
                        break;
                        addr263:
                     case 5:
                        this.§<!_§("1-6");
                        addr249:
                        if(_loc6_ || param2)
                        {
                           break;
                        }
                        §§goto(addr290);
                        break;
                     case 6:
                        this.§<!_§("1-7");
                        if(_loc6_ || this)
                        {
                           break;
                        }
                        break;
                     case 7:
                        addr213:
                        (§6!!§.singleton as §4!=§).§?!b§.§[o§(null);
                        (§6!!§.singleton as §4!=§).§=D§(false);
                        if(_loc6_ || this)
                        {
                           if(_loc6_ || param3)
                           {
                              §<f§(§^!N§.§-!q§);
                              §'!c§.§3!f§("Menu_Back");
                              if(!(_loc5_ && param3))
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr263);
                              }
                              break;
                              addr185:
                           }
                           else
                           {
                              §§goto(addr284);
                           }
                        }
                        break;
                        addr218:
                     case 8:
                        addr147:
                        §§push(§6!!§.singleton);
                        if(!(_loc5_ && this))
                        {
                           §§pop().§%![§.openPopup(new §[!x§());
                           if(_loc6_ || param3)
                           {
                              §'!c§.§3!f§("Menu_Confirm");
                              break;
                              addr141:
                           }
                           break;
                        }
                        §§goto(addr213);
                        break;
                     case 9:
                        addr133:
                        (§6!!§.singleton as §4!=§).§5@§();
                        this.updateMuteButtonState();
                        if(_loc6_ || param2)
                        {
                           break;
                        }
                        break;
                        addr136:
                     case 10:
                        this.§%!n§();
                        if(_loc6_ || param3)
                        {
                           if(!(_loc5_ && param1))
                           {
                              if(!(_loc5_ && this))
                              {
                                 §'!c§.§3!f§("Menu_Confirm");
                                 addr73:
                                 if(_loc6_ || param1)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc6_)
                                       {
                                          addr33:
                                          break;
                                       }
                                       §§goto(addr277);
                                    }
                                    else
                                    {
                                       §§goto(addr249);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr136);
                                 }
                              }
                              else
                              {
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr185);
                        }
                        break;
                     case 11:
                        §§push(§6!!§.singleton);
                        if(_loc6_)
                        {
                           if(_loc6_ || param2)
                           {
                              if(!_loc5_)
                              {
                                 (§§pop() as §4!=§).§?!l§();
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §'!c§.§3!f§("Menu_Confirm");
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr73);
                                             }
                                             §§goto(addr33);
                                          }
                                          break;
                                       }
                                       §§goto(addr270);
                                    }
                                    else
                                    {
                                       §§goto(addr141);
                                    }
                                 }
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr147);
                           }
                           §§goto(addr213);
                        }
                        else
                        {
                           §§goto(addr133);
                        }
                  }
                  return;
                  §§push(12);
               }
               §§goto(addr468);
               if(_loc6_)
               {
                  §§goto(addr463);
               }
            }
            §§goto(addr468);
         }
         §§goto(addr373);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(_loc4_ || this)
            {
               if(Keyboard.ESCAPE === _loc2_)
               {
                  addr91:
                  §§push(0);
                  if(_loc3_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §§push(§6!!§.singleton);
                     if(!(_loc3_ && this))
                     {
                        if(!(§§pop() as §4!=§).§&!N§())
                        {
                           if(_loc4_)
                           {
                              addr65:
                              §6!!§.singleton.§%![§.openPopup(new §[!x§());
                              while(true)
                              {
                                 §'!c§.§3!f§("Menu_Confirm");
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 break loop2;
                              }
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr65);
               }
               return;
            }
            §§goto(addr91);
         }
      }
      
      override public function updateMuteButtonState() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push((§6!!§.singleton as §4!=§).soundsEnabled);
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §?P§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
         }
         do
         {
            §'!c§.§3!f§("Menu_Confirm");
         }
         while(_loc3_);
         
      }
      
      private function §<!_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§`!2§.§'!d§(param1))
            {
               loop0:
               while(true)
               {
                  §&" §.loadLevel(param1);
                  addr88:
                  while(true)
                  {
                     §<f§(StateCutScene.§-!q§);
                     while(_loc3_ || this)
                     {
                        §'!c§.§3!f§("Menu_Confirm");
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr57:
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.updateLocalization();
            do
            {
               §!!G§.§2Z§.updateTextFields(§?P§.container,"StateEpisodeSelection");
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      private function §%!n§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5!Y§ = (§6!!§.singleton as §4!=§).§@!R§;
         if(!_loc3_)
         {
            _loc1_.loadLevel(_loc1_.getValidLevelId(§%!W§.§ H§));
            do
            {
               (§6!!§.singleton as §4!=§).§<f§(§-!v§.§-!q§);
            }
            while(_loc3_ && _loc1_);
            
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.update(param1);
         }
      }
   }
}
