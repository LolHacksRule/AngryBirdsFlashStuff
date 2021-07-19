package §[!i§
{
   import §,L§.§6!W§;
   import §0"$§.§+!@§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§[j§;
   import §;!§.§`B§;
   import §=!L§.§%Z§;
   import §=!L§.§4k§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import each.§8!N§;
   
   public class §!5§ extends §@"§
   {
      
      private static var §4!U§:Class;
      
      private static const §9C§:Number = 250;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!U§ = §2"§;
            do
            {
               §9C§ = 250;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §`!Y§:§0]§ = null;
      
      private var §'8§:Number;
      
      private var §&M§:String;
      
      public function §!5§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §-!w§ = true;
            loop0:
            while(true)
            {
               §@!X§ = false;
               while(true)
               {
                  super(§1!<§.§]!p§,§]l§.DEFAULT,this.§`!K§());
                  addr54:
                  while(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§&M§ = param1;
            if(_loc2_ || this)
            {
               break;
            }
            §§goto(addr54);
         }
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§4!U§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               this.§'8§ = §@'§.getItemByName("Container_PauseMenu").x;
               loop1:
               for(; _loc1_ || _loc2_; while(_loc1_ || _loc2_)
               {
                  §§goto(addr23);
               })
               {
                  while(true)
                  {
                     if(!this.§&M§)
                     {
                        while(true)
                        {
                           §#u§.cacheAsBitmap = true;
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        addr23:
                     }
                     if(!_loc2_)
                     {
                        (§@'§.getItemByName("TextField_LevelName") as §+!@§).setText(this.§&M§);
                     }
                     continue loop1;
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("RESTART_LEVEL" === _loc4_)
            {
               if(_loc5_ || this)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  addr243:
                  §§push(3);
                  if(!(_loc5_ || param2))
                  {
                     addr282:
                  }
               }
               §§goto(addr287);
            }
            else
            {
               if("RESUME_LEVEL" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(_loc5_ || param2)
                     {
                     }
                  }
               }
               else if("MENU" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(2);
                     if(!_loc6_)
                     {
                        §§goto(addr287);
                     }
                     else
                     {
                        §§goto(addr251);
                     }
                  }
               }
               else if("MUTE" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr243);
                  }
               }
               else if("HELP" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§push(4);
                     if(!_loc6_)
                     {
                        §§goto(addr287);
                     }
                     else
                     {
                        §§goto(addr282);
                     }
                  }
               }
               else if("FULLSCREEN" !== _loc4_)
               {
                  addr287:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §-!w§ = false;
                        close();
                        §[j§.§=!<§();
                        addr173:
                        §6!!§.singleton.§<f§(§[j§.§-!q§);
                        break;
                        addr174:
                        addr188:
                        addr182:
                        addr178:
                        addr171:
                     case 1:
                        this.closePressed();
                        break;
                        addr167:
                     case 2:
                        §'!c§.§&j§();
                        loop0:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§push(§6!!§.singleton);
                              while(true)
                              {
                                 §§push(§`B§.§-!q§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§pop().§<f§(§§pop());
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §-!w§ = false;
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                       close();
                                       if(!_loc6_)
                                       {
                                          break loop3;
                                       }
                                       §§goto(addr174);
                                    }
                                    addr151:
                                 }
                                 break;
                              }
                              §§goto(addr173);
                              addr131:
                           }
                           else
                           {
                              §§goto(addr188);
                           }
                        }
                        §§goto(addr182);
                     case 3:
                        addr111:
                        (§6!!§.singleton as §4!=§).§5@§();
                        §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
                        addr103:
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr178);
                        break;
                        addr114:
                     case 4:
                        this.§8<§();
                        if(_loc5_ || param3)
                        {
                           if(_loc5_ || param3)
                           {
                              addr65:
                              this.§[P§();
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr125);
                           }
                           else
                           {
                              §§goto(addr151);
                           }
                           §§goto(addr173);
                        }
                        break;
                     case 5:
                        §§push(§6!!§.singleton);
                        if(_loc5_ || param3)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(_loc5_)
                              {
                                 (§§pop() as §4!=§).§?!l§();
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr65);
                                                }
                                                else
                                                {
                                                   §§goto(addr167);
                                                }
                                             }
                                             §§goto(addr118);
                                          }
                                          else
                                          {
                                             §§goto(addr114);
                                          }
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr65);
                                 }
                                 break;
                              }
                              §§goto(addr171);
                           }
                           else
                           {
                              §§goto(addr131);
                           }
                        }
                        else
                        {
                           §§goto(addr111);
                        }
                        §§goto(addr111);
                  }
                  return;
                  §§push(6);
               }
               §§goto(addr287);
               if(!(_loc6_ && param1))
               {
                  §§goto(addr282);
               }
            }
            §§goto(addr287);
         }
         §§goto(addr243);
      }
      
      override protected function updateMuteButtonState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = (§6!!§.singleton as §4!=§).soundsEnabled;
         }
      }
      
      override protected function closePressed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8<§();
         }
      }
      
      protected function §[P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§4k§ = §6!!§.singleton.§6"#§;
         var _loc2_:Vector.<String> = _loc1_.§2s§.getTutorialNamesForMapping(§%Z§.§##§);
         if(!_loc4_)
         {
            _loc1_.§-z§(_loc2_,true,true,true,true,null,true,true);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §@!X§ = false;
         }
         while(true)
         {
            super.show(param1);
            while(!(_loc3_ && _loc3_))
            {
               this.§7L§();
               do
               {
                  §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
               }
               while(_loc3_);
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §7L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §@'§.getItemByName("Container_PauseMenu").x = this.§'8§ - §9C§;
            loop0:
            while(true)
            {
               this.§3!M§(false);
               addr114:
               while(true)
               {
                  §§push(this.§`!Y§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        this.§`!Y§ = §'^§.§2Z§.§!!f§(§@'§.getItemByName("Container_PauseMenu"),{"x":this.§'8§},null,0.25,§'^§.§"P§);
                        loop7:
                        while(true)
                        {
                           §§push(this.§`!Y§);
                           addr56:
                           addr108:
                           loop8:
                           while(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§pop().onComplete = this.§!!M§;
                                 while(_loc1_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop7;
                                 addr73:
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              §§pop().stop();
                              addr109:
                              while(true)
                              {
                                 continue loop6;
                              }
                              §§goto(addr56);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§`!Y§);
            if(_loc1_ || _loc2_)
            {
               §§pop().play();
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr109);
               }
               §§goto(addr73);
            }
            §§goto(addr56);
         }
      }
      
      private function §!!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§3!M§(true);
         }
         do
         {
            this.§1!N§();
         }
         while(!_loc2_);
         
      }
      
      private function §3!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§@'§.getItemByName("Button_Resume") as §;§).setEnabled(param1);
            loop0:
            while(true)
            {
               (§@'§.getItemByName("Button_Replay") as §;§).setEnabled(param1);
               addr108:
               while(true)
               {
                  (§@'§.getItemByName("Button_Menu") as §;§).setEnabled(param1);
                  addr89:
                  while(true)
                  {
                     (§@'§.getItemByName("Button_Help") as §;§).setEnabled(param1);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            (§@'§.getItemByName("Button_FullScreen") as §;§).setEnabled(param1);
            §§goto(addr48);
         }
      }
      
      private function §1!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§&!"§.§1!D§);
            loop0:
            while(true)
            {
               §§push(§§pop().slingshot.birdsAvailable);
               addr126:
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              (§@'§.getItemByName("Button_Help") as §;§).setEnabled(true,true);
                              do
                              {
                                 §@'§.getItemByName("Button_Help").mClip.alpha = 1;
                              }
                              while(_loc1_);
                              
                              if(!(_loc2_ || this))
                              {
                                 return;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    break loop1;
                                 }
                                 addr101:
                                 (§@'§.getItemByName("Button_Help") as §;§).setEnabled(false,true);
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                              addr84:
                           }
                           §§goto(addr101);
                        }
                        §@'§.getItemByName("Button_Help").mClip.alpha = 0.6;
                        §§goto(addr84);
                        addr99:
                     }
                  }
                  addr131:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §8<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§`!Y§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§`!Y§);
                     addr111:
                     while(true)
                     {
                        §§pop().stop();
                        addr112:
                        while(true)
                        {
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  hide();
                  addr87:
                  loop4:
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§`!Y§ = §'^§.§2Z§.§!!f§(§@'§.getItemByName("Container_PauseMenu"),{"x":this.§'8§ - §9C§},null,0.2,§'^§.§8H§);
                        while(!(_loc1_ && this))
                        {
                           §§push(this.§`!Y§);
                           if(_loc1_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                        addr76:
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr111);
               }
            }
         }
         §§goto(addr112);
      }
   }
}
