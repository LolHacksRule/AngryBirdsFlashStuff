package §[!i§
{
   import §"n§.§!!G§;
   import §#![§.§%!W§;
   import §&!F§.§%!r§;
   import §&!F§.§5v§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §5!G§.§#!6§;
   import §5!G§.§64§;
   import §8!K§.§5!Y§;
   import §;!§.§-!v§;
   import §;!§.§1A§;
   import each.§8!N§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §-!`§ extends §@"§
   {
      
      private static var §%!4§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%!4§ = §=C§;
         }
      }
      
      private var §=P§:§5v§;
      
      private var mParentContainer:§"!a§;
      
      private var §2j§:§;§;
      
      private var §7o§:§64§;
      
      public function §-!`§(param1:§"!a§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-!w§ = false;
            while(true)
            {
               §@!X§ = false;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            §0!T§ = false;
            while(true)
            {
               super(§1!<§.§20§,§]l§.DEFAULT,this.§`!K§());
               while(!_loc2_)
               {
                  this.mParentContainer = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §^""§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§=P§.offset == 0);
         if(_loc3_ || this)
         {
            §§push(!§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.§=P§.offset == this.§=P§.data.length - this.§=P§.§=I§);
         if(_loc3_ || _loc1_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §@'§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         }
         do
         {
            §@'§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
         }
         while(_loc4_);
         
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§!!G§.§2Z§);
            while(true)
            {
               §§pop().updateTextFields(§@'§,"SelectLanguage_Popup");
               while(true)
               {
                  §§push(§!!G§.§2Z§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().updateTextFields(this.mParentContainer,"LanguageSelectionState");
                  if(_loc1_ || this)
                  {
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §0t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!!G§.§2Z§.setLanguage(param1);
            do
            {
               §-!]§.setLanguage(param1);
            }
            while(_loc2_);
            
         }
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§%!4§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               this.updateTextFields();
               addr85:
               while(true)
               {
                  this.§[v§();
               }
            }
            addr88:
         }
         loop2:
         while(true)
         {
            §@'§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
            while(true)
            {
               if(!(_loc1_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr88);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr85);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.show(param1);
            do
            {
               this.§-S§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §[v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§7o§ = new §64§();
            while(true)
            {
               this.§5Q§();
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §6!c§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §5Q§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §@'§.getItemByName("Container_LanguageSelection").mClip;
         _loc2_ = this.§7o§.§5!U§();
         if(_loc3_ || this)
         {
            if(!this.§=P§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§=P§ = new §5v§(_loc1_.width,_loc1_.height,§@'§.getItemByName("Container_LanguageSelection") as §"!a§,_loc2_,§%!r§,0,0);
               }
               while(true)
               {
                  _loc1_.addChild(this.§=P§.§`h§);
                  addr76:
                  while(true)
                  {
                  }
                  addr62:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr69:
               }
            }
            while(true)
            {
               this.§^""§();
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr62);
            }
            §§goto(addr69);
         }
         §§goto(addr76);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:* = false;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               if("SCROLL_LANGUAGE_DOWN" === _loc6_)
               {
                  if(_loc7_ || param2)
                  {
                     §§push(0);
                     if(_loc8_ && param2)
                     {
                        addr405:
                     }
                  }
                  else
                  {
                     addr416:
                     §§push(5);
                     if(_loc7_ || this)
                     {
                        addr424:
                     }
                     else
                     {
                        addr433:
                     }
                  }
               }
               else if("SCROLL_LANGUAGE_UP" === _loc6_)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§push(1);
                     if(_loc8_)
                     {
                     }
                  }
                  else
                  {
                     addr430:
                     §§push(6);
                     if(_loc7_)
                     {
                        §§goto(addr433);
                     }
                     else
                     {
                        addr450:
                     }
                  }
               }
               else if("SCROLLITEM_LANGUAGE_CLICK" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§push(2);
                     if(_loc8_)
                     {
                        §§goto(addr424);
                     }
                  }
                  else
                  {
                     §§goto(addr430);
                  }
               }
               else if("BUTTON_PLAY" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§push(3);
                     if(!_loc7_)
                     {
                        §§goto(addr424);
                     }
                  }
                  else
                  {
                     addr397:
                     §§push(4);
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr405);
                     }
                     else
                     {
                        §§goto(addr450);
                     }
                  }
               }
               else if("BUTTON_EXIT" === _loc6_)
               {
                  if(_loc7_ || param1)
                  {
                     §§goto(addr397);
                  }
                  else
                  {
                     §§goto(addr430);
                  }
               }
               else
               {
                  if("BUTTON_CREDITS" === _loc6_)
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§goto(addr416);
                     }
                     addr455:
                     switch(§§pop())
                     {
                        case 0:
                           this.§,!0§(this.§=P§.§=I§);
                           §'!c§.§3!f§("Menu_Back");
                           addr320:
                           break loop0;
                           addr320:
                           addr328:
                        case 1:
                           this.§,!0§(-this.§=P§.§=I§);
                           addr294:
                           §'!c§.§3!f§("Menu_Back");
                           if(_loc7_ || param1)
                           {
                              break loop0;
                           }
                           §§goto(addr320);
                           break;
                           addr315:
                        case 2:
                           this.§[o§(param3 as §;§);
                           if(!(_loc8_ && param1))
                           {
                              §@'§.getItemByName("Button_Play").setVisibility(true);
                              break;
                           }
                           break loop0;
                        case 3:
                           continue;
                        case 4:
                           addr178:
                           §6!!§.singleton.§%![§.openPopup(new §[!x§());
                           if(_loc7_ || param3)
                           {
                              if(!(_loc8_ && this))
                              {
                                 §'!c§.§3!f§("Menu_Confirm");
                                 break loop0;
                                 addr172:
                              }
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(§6!!§.singleton);
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          (§§pop() as §4!=§).§=D§(true);
                                          §'!c§.§3!f§("Menu_Confirm");
                                          addr201:
                                          break loop0;
                                          addr211:
                                          addr201:
                                       }
                                       continue loop4;
                                    }
                                    addr205:
                                 }
                                 else
                                 {
                                    addr265:
                                    while(true)
                                    {
                                       §§push(§6!!§.singleton);
                                       addr234:
                                       while(true)
                                       {
                                          (§§pop() as §4!=§).§?!b§.§[o§(_loc4_);
                                          addr239:
                                          while(true)
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(§6!!§.singleton);
                                                continue loop4;
                                             }
                                             §§goto(addr315);
                                          }
                                       }
                                    }
                                    addr265:
                                 }
                              }
                              §§goto(addr294);
                              addr218:
                           }
                           §§goto(addr294);
                        case 5:
                           this.§%!n§();
                           addr156:
                           if(!(_loc8_ && param2))
                           {
                              if(!_loc8_)
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §'!c§.§3!f§("Menu_Confirm");
                                 addr143:
                                 if(_loc7_ || this)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr211);
                              }
                              break loop0;
                              addr270:
                           }
                           §§goto(addr201);
                        case 6:
                           §§push(§6!!§.singleton);
                           loop3:
                           while(true)
                           {
                              if(_loc7_ || this)
                              {
                                 (§§pop() as §4!=§).§5@§();
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       break loop3;
                                    }
                                    §§push(§6!!§.singleton);
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc7_ || param3)
                                       {
                                          §§push((§§pop() as §4!=§).soundsEnabled);
                                          if(!(_loc8_ && param3))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc5_ = §§pop();
                                          if(_loc7_)
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §@'§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
                                                loop6:
                                                while(true)
                                                {
                                                   §'!c§.§3!f§("Menu_Confirm");
                                                   addr67:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || param3)
                                                   {
                                                      addr41:
                                                      break loop0;
                                                   }
                                                   §§goto(addr328);
                                                }
                                                else
                                                {
                                                   §§goto(addr143);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr172);
                                             }
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr234);
                                       §§goto(addr320);
                                    }
                                    §§goto(addr218);
                                 }
                                 addr136:
                              }
                              else
                              {
                                 §§goto(addr178);
                              }
                           }
                           §§goto(addr178);
                        case 7:
                           §§push(§6!!§.singleton);
                           if(!(_loc8_ && param1))
                           {
                              if(_loc7_)
                              {
                                 (§§pop() as §4!=§).§?!l§();
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          §'!c§.§3!f§("Menu_Confirm");
                                          if(_loc7_ || param1)
                                          {
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr41);
                                             }
                                             §§goto(addr67);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr239);
                                    }
                                    else
                                    {
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr90);
                     }
                     §'!c§.§3!f§("Menu_Confirm");
                     §§goto(addr270);
                  }
                  else
                  {
                     if("BUTTON_MUTE" === _loc6_)
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr430);
                        }
                     }
                     else if("BUTTON_FULLSCREEN" !== _loc6_)
                     {
                        §§goto(addr455);
                        §§push(8);
                     }
                     §§goto(addr455);
                  }
                  if(_loc7_)
                  {
                     §§goto(addr450);
                  }
               }
               §§goto(addr455);
            }
            §§goto(addr430);
         }
      }
      
      override protected function updateMuteButtonState() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push((§6!!§.singleton as §4!=§).soundsEnabled);
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §@'§.getItemByName("MovieClip_SoundOff").setVisibility(_loc1_);
         }
         do
         {
            §'!c§.§3!f§("Menu_Confirm");
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §-S§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push((§6!!§.singleton as §4!=§).soundsEnabled);
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §@'§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
         }
      }
      
      private function §[o§(param1:§;§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;[§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         if(_loc7_ || _loc3_)
         {
            this.§0t§(_loc2_);
            if(!_loc6_)
            {
               addr39:
               if(this.§2j§)
               {
                  §§goto(addr42);
               }
               §§goto(addr166);
            }
            addr42:
            for each(_loc3_ in (§@'§.getItemByName("Container_LanguageSelection") as §"!a§).§<C§)
            {
               if(_loc7_ || _loc3_)
               {
                  if(!(_loc3_ is §;§))
                  {
                     continue;
                  }
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc3_.mName != this.§2j§.mName)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     (_loc3_ as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
               }
               _loc3_.setEnabled(true);
            }
            if(!_loc6_)
            {
               addr166:
               param1.setEnabled(false);
               while(true)
               {
                  param1.setComponentState(§%J§.§2!r§);
                  §§goto(addr165);
               }
            }
            addr165:
            while(true)
            {
               this.§2j§ = param1;
               do
               {
                  this.§=P§.§9F§ = param1.mName;
               }
               while(_loc6_ && _loc3_);
               
               if(!(_loc6_ && this))
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private function §,!0§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != 0)
            {
               if(!_loc3_)
               {
                  this.§=P§.scroll(param1);
               }
               do
               {
                  this.§^""§();
               }
               while(!_loc2_);
               
               addr43:
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §%!n§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5!Y§ = (§6!!§.singleton as §4!=§).§@!R§;
         if(_loc2_ || this)
         {
            _loc1_.loadLevel(_loc1_.getValidLevelId(§%!W§.§ H§));
         }
         loop0:
         while(true)
         {
            §§push(§6!!§.singleton);
            while(true)
            {
               (§§pop() as §4!=§).§<f§(§-!v§.§-!q§);
               §§push(§6!!§.singleton);
               addr85:
               continue loop0;
               if(_loc2_)
               {
                  §§pop().§%![§.§[!"§();
                  if(!(_loc3_ && _loc1_))
                  {
                     return;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §<g§(param1:uint) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§#!6§ = null;
         var _loc2_:String = String.fromCharCode(param1);
         var _loc3_:* = 0;
         var _loc4_:§#!6§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§=P§.data.length)
         {
            if((_loc6_ = this.§=P§.data[_loc5_]).nativeName.charAt(0).toLocaleLowerCase() == _loc2_.toLocaleLowerCase())
            {
               if(_loc8_ || _loc3_)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc3_ = §§pop();
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
               }
               _loc4_ = _loc6_;
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr95);
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            if(_loc8_)
            {
               addr95:
               return;
            }
         }
         this.§,!0§(this.§=P§.§!4§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:RegExp = /[A-Za-z]/;
         if(!_loc3_)
         {
            if(!String.fromCharCode(param1.charCode).match(_loc2_))
            {
               if(param1.keyCode != Keyboard.UP)
               {
                  if(param1.keyCode == Keyboard.DOWN)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc4_)
                           {
                              this.§,!0§(this.§=P§.§=I§);
                              addr63:
                              if(!_loc4_)
                              {
                                 addr74:
                                 this.§,!0§(-this.§=P§.§=I§);
                                 addr80:
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr25);
                           }
                           else
                           {
                              addr105:
                              this.§<g§(param1.charCode);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr63);
                  }
                  addr25:
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr105);
      }
      
      override protected function closePressed() : void
      {
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §6!c§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         }
         do
         {
            super.dispose();
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
