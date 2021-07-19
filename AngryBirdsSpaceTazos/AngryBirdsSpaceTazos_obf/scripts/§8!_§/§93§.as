package §8!_§
{
   import §%!r§.§3!'§;
   import §'4§.§-T§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §93§ extends §5!&§
   {
      
      public static const §&!Q§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!Q§ = -250;
         }
         do
         {
            STATE_NAME = "PauseState";
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected var §0"F§:§5!9§ = null;
      
      public function §93§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "PauseState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            do
            {
               §8!A§ = new §1"F§(this);
               do
               {
                  §8!A§.init(§-G§.§4+§.Views.View_LevelPause[0]);
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_);
            
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
         loop0:
         do
         {
            this.§>@§();
            while(true)
            {
               §9q§.§>!L§.background.stopAmbientSound();
               while(!_loc2_)
               {
                  this.§5N§();
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc3_);
         
      }
      
      protected function §5N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!A§.getItemByName("Button_Help").setVisibility(false);
            while(true)
            {
               §8!A§.getItemByName("Button_Sound").setVisibility(false);
               while(!(_loc1_ && _loc2_))
               {
                  §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §=a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0"F§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr74:
                     this.§0"F§.stop();
                  }
                  do
                  {
                     this.§0"F§ = null;
                  }
                  while(_loc2_ && _loc1_);
                  
                  addr44:
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr44);
      }
      
      protected function §>@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§6u§.currentLevelNumericName != null)
            {
               while(true)
               {
                  (§8!A§.getItemByName("TextField_LevelName") as §&!>§).§ !'§.text = §6u§.currentLevelNumericName;
                  addr171:
                  while(true)
                  {
                  }
               }
               addr152:
            }
            while(true)
            {
               (§8!A§.getItemByName("Container_PauseMenu") as § ",§).x = §&!Q§;
               addr147:
               while(true)
               {
                  this.§!"%§(false);
               }
               §§goto(addr171);
            }
         }
         loop4:
         while(true)
         {
            §9q§.pause();
            loop5:
            while(true)
            {
               if(!_loc1_)
               {
                  §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !g§.§<!c§());
                  while(true)
                  {
                     this.§=a§();
                     loop7:
                     while(_loc2_ || _loc1_)
                     {
                        if(!_loc1_)
                        {
                           this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(§8!A§.getItemByName("Container_PauseMenu") as § ",§,{"x":0},null,0.25),§!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_DarkBG") as §,y§).mClip,{"alpha":1},{"alpha":0},0.25));
                           loop8:
                           do
                           {
                              §§push(this.§0"F§);
                              while(true)
                              {
                                 §§pop().onComplete = this.§#!t§;
                                 addr48:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                                 addr59:
                                 §§push(this.§0"F§);
                                 continue loop5;
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§pop().play();
                                 if(_loc2_)
                                 {
                                    continue loop8;
                                 }
                                 §§goto(addr48);
                              }
                           }
                           while(_loc1_ && _loc1_);
                           
                           if(_loc2_)
                           {
                              return;
                           }
                           continue loop4;
                        }
                        §§goto(addr147);
                     }
                  }
               }
               else
               {
                  §§goto(addr152);
               }
               §§goto(addr147);
            }
         }
      }
      
      protected function §#!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!"%§(true);
         }
         do
         {
            this.§=a§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      protected function §!"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§8!A§.getItemByName("Button_Resume") as §@_§).setEnabled(param1);
            while(true)
            {
               (§8!A§.getItemByName("Button_Replay") as §@_§).setEnabled(param1);
               while(!_loc3_)
               {
                  (§8!A§.getItemByName("Button_Menu") as §@_§).setEnabled(param1);
                  do
                  {
                     (§8!A§.getItemByName("Button_Help") as §@_§).setEnabled(param1);
                     do
                     {
                        (§8!A§.getItemByName("Button_Sound") as §@_§).setEnabled(param1);
                     }
                     while(_loc3_ && param1);
                     
                  }
                  while(!(_loc2_ || this));
                  
                  if(_loc2_)
                  {
                     return;
                     addr62:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      protected function §-!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§8!A§.getItemByName("Button_Resume") as §@_§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
               while(true)
               {
                  (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
                  addr69:
                  while(_loc3_)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            (§8!A§.getItemByName("Button_Help") as §@_§).setComponentVisualState(param1);
            while(!_loc2_)
            {
               (§8!A§.getItemByName("Button_Sound") as §@_§).setComponentVisualState(param1);
               if(!_loc2_)
               {
                  return;
               }
            }
            §§goto(addr69);
         }
      }
      
      protected function §,D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§=a§();
            while(true)
            {
               this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(§8!A§.getItemByName("Container_PauseMenu") as § ",§,{"x":§&!Q§},null,0.25),§!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_DarkBG") as §,y§).mClip,{"alpha":0},{"alpha":1},0.25));
               while(!_loc1_)
               {
                  §§push(this.§0"F§);
                  while(true)
                  {
                     §§pop().onComplete = this.§1C§;
                     §§goto(addr66);
                  }
               }
            }
         }
         addr66:
         while(true)
         {
            §§push(this.§0"F§);
            if(!(_loc1_ && this))
            {
               §§pop().play();
               if(!(_loc1_ && this))
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop1;
               }
               continue;
            }
            continue loop2;
         }
      }
      
      protected function §1C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!^§(this.§1!u§());
            do
            {
               this.§=a§();
            }
            while(_loc1_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.deActivate();
         }
         while(true)
         {
            this.§=a§();
            while(_loc1_ || this)
            {
               this.§-!'§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§-T§ = null;
         var _loc7_:* = param2;
         if(!_loc10_)
         {
            if("HELP" === _loc7_)
            {
               if(_loc9_)
               {
                  §§push(0);
                  if(_loc9_ || param1)
                  {
                  }
               }
               else
               {
                  addr275:
                  §§push(2);
                  if(!(_loc9_ || param2))
                  {
                     addr339:
                  }
               }
            }
            else
            {
               if("RESTART_LEVEL" === _loc7_)
               {
                  if(_loc9_)
                  {
                     §§push(1);
                     if(_loc10_ && param2)
                     {
                        §§goto(addr339);
                     }
                  }
                  else
                  {
                     addr343:
                     §§push(7);
                     if(_loc10_)
                     {
                     }
                  }
               }
               else if("RESUME_LEVEL" === _loc7_)
               {
                  if(_loc9_ || this)
                  {
                     §§goto(addr275);
                  }
                  else
                  {
                     addr312:
                     §§push(5);
                     if(_loc10_ && param1)
                     {
                     }
                  }
               }
               else if("END_LEVEL" === _loc7_)
               {
                  if(_loc9_)
                  {
                     §§push(3);
                     if(_loc10_)
                     {
                        §§goto(addr339);
                     }
                  }
                  else
                  {
                     addr331:
                     §§push(6);
                     if(_loc9_ || param3)
                     {
                        §§goto(addr339);
                     }
                  }
               }
               else if("MENU" === _loc7_)
               {
                  if(!(_loc10_ && param3))
                  {
                     §§push(4);
                     if(_loc10_)
                     {
                        §§goto(addr339);
                     }
                  }
                  else
                  {
                     §§goto(addr312);
                  }
               }
               else
               {
                  if("TOGGLE_SOUNDS" === _loc7_)
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr312);
                     }
                     else
                     {
                        §§goto(addr343);
                     }
                  }
                  else
                  {
                     if("TOGGLE_PARTICLES" === _loc7_)
                     {
                        if(!(_loc10_ && param1))
                        {
                           §§goto(addr331);
                        }
                        else
                        {
                           §§goto(addr343);
                        }
                     }
                     else if("FULLSCREEN_BUTTON" === _loc7_)
                     {
                        §§goto(addr343);
                     }
                     else
                     {
                        §§push(8);
                     }
                     §§goto(addr343);
                  }
                  §§goto(addr343);
               }
               §§goto(addr343);
            }
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     this.§,D§();
                     if(_loc10_)
                     {
                        §9q§.§]i§(_loc5_);
                        if(!_loc10_)
                        {
                           addr99:
                           §8!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
                           if(!(_loc10_ && param1))
                           {
                              if(_loc9_)
                              {
                                 break loop0;
                              }
                              addr149:
                              break loop0;
                              addr149:
                           }
                           break loop0;
                        }
                        break loop0;
                     }
                     continue;
                     addr141:
                     break;
                  case 1:
                     §8!^§(this.§^!m§());
                     break;
                  case 2:
                     this.§,D§();
                     addr215:
                     if(_loc9_ || this)
                     {
                        break loop0;
                     }
                     break;
                  case 3:
                     break loop0;
                  case 4:
                     §<!O§.§'N§();
                     loop2:
                     while(true)
                     {
                        §8!^§(this.§4?§());
                        addr187:
                        while(!(_loc9_ || param2))
                        {
                           continue loop2;
                        }
                        if(_loc9_ || param2)
                        {
                           break loop0;
                        }
                        §§goto(addr215);
                     }
                     break;
                     addr209:
                  case 5:
                     addr168:
                     §§push(§ !g§.§<!c§());
                     if(_loc9_ || param3)
                     {
                        §§push(!§§pop());
                     }
                     _loc4_ = §§pop();
                     if(!_loc10_)
                     {
                        § !g§.§@p§(_loc4_);
                        §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                        §§goto(addr149);
                        addr154:
                     }
                     break loop0;
                  case 6:
                     §§push(§9q§.§&T§());
                     if(!(_loc10_ && param2))
                     {
                        if(!_loc10_)
                        {
                           addr138:
                           _loc5_ = !§§pop();
                           if(_loc9_)
                           {
                              §§goto(addr141);
                           }
                           else
                           {
                              §§goto(addr187);
                           }
                        }
                        else
                        {
                           §§goto(addr168);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr138);
                  case 7:
                     § !g§.§;!'§.§%!N§();
                     if(!(_loc10_ && param1))
                     {
                        if(!_loc10_)
                        {
                           if(_loc9_)
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                              §§goto(addr99);
                           }
                           else
                           {
                              §§goto(addr154);
                           }
                        }
                        else
                        {
                           §§goto(addr138);
                        }
                        §§goto(addr99);
                     }
               }
               break;
            }
            return;
         }
         §§goto(addr343);
      }
      
      protected function §1!u§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
   }
}
