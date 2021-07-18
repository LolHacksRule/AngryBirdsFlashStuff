package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§3!&§;
   import com.angrybirds.§&!"§;
   
   public class § !c§ extends §;" §
   {
      
      public static const §9C§:Number = -250;
      
      public static const §-!q§:String = "PauseState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && § !c§))
         {
            §9C§ = -250;
         }
         do
         {
            §-!q§ = "PauseState";
         }
         while(!_loc1_);
         
      }
      
      protected var §`!Y§:§0]§ = null;
      
      public function § !c§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "PauseState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            do
            {
               §?P§ = new §2W§(this);
               do
               {
                  §?P§.init(§#"0§.§+#§.Views.View_LevelPause[0]);
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
         }
         while(true)
         {
            this.§7L§();
            while(!_loc2_)
            {
               §&!"§.§1!D§.background.§#]§();
               while(!_loc2_)
               {
                  this.§6!-§();
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §6!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?P§.getItemByName("Button_Help").setVisibility(false);
         }
         while(true)
         {
            §?P§.getItemByName("Button_Sound").setVisibility(false);
            while(_loc2_ || _loc2_)
            {
               §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
               if(!(_loc1_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private function §finally§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§`!Y§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr64:
                     this.§`!Y§.stop();
                     do
                     {
                        this.§`!Y§ = null;
                     }
                     while(!(_loc1_ || _loc1_));
                     
                     addr65:
                  }
                  §§goto(addr65);
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      protected function §7L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§&" §.currentLevelNumericName != null)
            {
               loop0:
               while(true)
               {
                  (§?P§.getItemByName("TextField_LevelName") as §+!@§).§"v§.text = §&" §.currentLevelNumericName;
                  addr191:
                  while(true)
                  {
                     addr44:
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               (§?P§.getItemByName("Container_PauseMenu") as §"!a§).x = §9C§;
               while(true)
               {
                  this.§3!M§(false);
                  loop4:
                  while(_loc2_ || _loc1_)
                  {
                     §&!"§.pause();
                     loop5:
                     while(true)
                     {
                        §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!§6!!§.§2!c§());
                        loop6:
                        while(true)
                        {
                           this.§finally§();
                           while(true)
                           {
                              this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(§?P§.getItemByName("Container_PauseMenu") as §"!a§,{"x":0},null,0.25),§'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_DarkBG") as §6n§).mClip,{"alpha":1},{"alpha":0},0.25));
                              loop8:
                              while(!(_loc1_ && this))
                              {
                                 §§push(this.§`!Y§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§!!M§;
                                    addr65:
                                    while(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    addr76:
                                    continue loop8;
                                    while(true)
                                    {
                                       §§push(this.§`!Y§);
                                       if(_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       §§pop().play();
                                       if(!(_loc1_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr44);
                                       }
                                       else
                                       {
                                          §§goto(addr65);
                                       }
                                    }
                                    §§goto(addr58);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr191);
            }
         }
         §§goto(addr76);
      }
      
      protected function §!!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!M§(true);
         }
         do
         {
            this.§finally§();
         }
         while(!(_loc1_ || this));
         
      }
      
      protected function §3!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§?P§.getItemByName("Button_Resume") as §;§).setEnabled(param1);
         }
         loop0:
         while(true)
         {
            (§?P§.getItemByName("Button_Replay") as §;§).setEnabled(param1);
            loop1:
            do
            {
               (§?P§.getItemByName("Button_Menu") as §;§).setEnabled(param1);
               while(true)
               {
                  (§?P§.getItemByName("Button_Help") as §;§).setEnabled(param1);
                  while(_loc3_)
                  {
                     continue loop0;
                     (§?P§.getItemByName("Button_Sound") as §;§).setEnabled(param1);
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!(_loc3_ || this));
            
            return;
         }
      }
      
      protected function §5O§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            (§?P§.getItemByName("Button_Resume") as §;§).setComponentVisualState(param1);
         }
         loop0:
         do
         {
            (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
            loop1:
            while(true)
            {
               (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
               loop2:
               do
               {
                  (§?P§.getItemByName("Button_Help") as §;§).setComponentVisualState(param1);
                  while(_loc2_)
                  {
                     (§?P§.getItemByName("Button_Sound") as §;§).setComponentVisualState(param1);
                     if(!_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc3_);
               
               continue loop0;
            }
         }
         while(_loc3_);
         
      }
      
      protected function §8<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§finally§();
            while(true)
            {
               this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(§?P§.getItemByName("Container_PauseMenu") as §"!a§,{"x":§9C§},null,0.25),§'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_DarkBG") as §6n§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop1:
               while(true)
               {
                  §§push(this.§`!Y§);
                  while(true)
                  {
                     §§pop().onComplete = this.§8u§;
                     §§push(this.§`!Y§);
                     addr72:
                     continue loop1;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr38:
                        §§pop().play();
                        if(!(_loc2_ && this))
                        {
                           return;
                           addr46:
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function §8u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §<f§(this.§1f§());
            do
            {
               this.§finally§();
            }
            while(_loc1_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            while(true)
            {
               this.§finally§();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§5O§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§3!&§ = null;
         var _loc7_:* = param2;
         if(!(_loc9_ && param1))
         {
            if("HELP" === _loc7_)
            {
               if(_loc10_)
               {
                  §§push(0);
                  if(!(_loc10_ || param2))
                  {
                     addr288:
                  }
               }
               else
               {
                  addr313:
                  §§push(5);
                  if(!_loc9_)
                  {
                     addr316:
                  }
               }
            }
            else
            {
               if("RESTART_LEVEL" === _loc7_)
               {
                  if(!(_loc9_ && param2))
                  {
                     §§push(1);
                     if(_loc9_)
                     {
                        addr302:
                     }
                  }
               }
               else if("RESUME_LEVEL" === _loc7_)
               {
                  if(!_loc9_)
                  {
                     addr266:
                     §§push(2);
                     if(!_loc9_)
                     {
                        §§goto(addr357);
                     }
                     else
                     {
                        §§goto(addr316);
                     }
                  }
                  else
                  {
                     §§goto(addr313);
                  }
               }
               else if("END_LEVEL" === _loc7_)
               {
                  if(!(_loc9_ && param1))
                  {
                     §§push(3);
                     if(_loc10_ || this)
                     {
                        §§goto(addr288);
                     }
                     else
                     {
                        addr352:
                        §§goto(addr357);
                     }
                  }
                  else
                  {
                     §§goto(addr313);
                  }
               }
               else if("MENU" === _loc7_)
               {
                  if(!_loc9_)
                  {
                     §§push(4);
                     if(!(_loc9_ && param1))
                     {
                        §§goto(addr302);
                     }
                     else
                     {
                        §§goto(addr352);
                     }
                  }
                  else
                  {
                     addr327:
                     §§push(6);
                     if(!_loc10_)
                     {
                     }
                     §§goto(addr357);
                  }
               }
               else if("TOGGLE_SOUNDS" === _loc7_)
               {
                  if(_loc10_ || this)
                  {
                     §§goto(addr313);
                  }
                  else
                  {
                     §§goto(addr327);
                  }
               }
               else
               {
                  if("TOGGLE_PARTICLES" === _loc7_)
                  {
                     if(!(_loc9_ && param1))
                     {
                        §§goto(addr327);
                     }
                  }
                  else if("FULLSCREEN_BUTTON" !== _loc7_)
                  {
                     addr357:
                     loop0:
                     while(true)
                     {
                        loop7:
                        switch(§§pop())
                        {
                           case 0:
                              this.§8<§();
                              if(!_loc10_)
                              {
                                 break loop0;
                              }
                              addr80:
                              continue;
                           case 1:
                              §<f§(this.§8!w§());
                              break loop0;
                              addr220:
                           case 2:
                              this.§8<§();
                              if(!_loc9_)
                              {
                                 break loop0;
                              }
                              break loop0;
                           case 3:
                              break loop0;
                           case 4:
                              §'!c§.§&j§();
                              if(_loc10_ || param2)
                              {
                                 §<f§(this.§0!Z§());
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr220);
                                 }
                                 break loop0;
                                 addr205:
                              }
                              break loop0;
                           case 5:
                              addr169:
                              _loc4_ = !§6!!§.§2!c§();
                              addr168:
                              break;
                           case 6:
                              §§push(§&!"§.§?!v§());
                              if(_loc10_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!_loc9_)
                              {
                                 if(_loc10_ || param3)
                                 {
                                    _loc5_ = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       §&!"§.§<8§(_loc5_);
                                       if(_loc10_)
                                       {
                                          if(_loc10_ || param1)
                                          {
                                             if(_loc10_ || param3)
                                             {
                                                while(true)
                                                {
                                                   §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      break loop0;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                addr91:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                   break loop7;
                                                }
                                                break loop0;
                                                addr157:
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc9_ && this)
                                             {
                                                break loop7;
                                             }
                                             §§goto(addr157);
                                          }
                                       }
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr169);
                           case 7:
                              §6!!§.singleton.§%!O§();
                              if(!_loc9_)
                              {
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr91);
                              }
                        }
                     }
                     continue loop4;
                     return;
                     §§push(8);
                  }
                  §§goto(addr357);
               }
               §§goto(addr357);
               if(!(_loc9_ && param3))
               {
                  §§goto(addr352);
               }
            }
            §§goto(addr357);
         }
         §§goto(addr266);
      }
      
      protected function §1f§() : String
      {
         return StatePlay.§-!q§;
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §0!Z§() : String
      {
         return §4!9§.§-!q§;
      }
   }
}
