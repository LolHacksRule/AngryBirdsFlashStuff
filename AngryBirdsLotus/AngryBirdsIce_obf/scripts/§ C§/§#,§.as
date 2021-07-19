package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§?!?§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §`W§.§-[§;
   import flash.text.TextFieldAutoSize;
   
   public class §#,§ extends §,§
   {
       
      
      public function §#,§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §@!9§ = true;
            while(true)
            {
               loop1:
               while(true)
               {
                  §,R§ = new §#H§(this);
                  do
                  {
                     §,R§.init(§set §.§&!1§.Views.View_FacebookLevelPause[0]);
                  }
                  while(_loc2_ && _loc3_);
                  
                  if(!_loc2_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc1_:§'4§ = §,R§.getItemByName("TextField_ChapterName") as §'4§;
                     if(_loc3_ || this)
                     {
                        _loc1_.§8?§.autoSize = TextFieldAutoSize.CENTER;
                     }
                     return;
                     addr53:
                  }
                  break;
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         do
         {
            (§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip.alpha = 0;
         }
         while(_loc2_ && this);
         
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§'4§ = null;
         var _loc2_:* = null;
         if(!_loc4_)
         {
            if(§0$§.§[C§ != null)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc1_ = §,R§.getItemByName("TextField_ChapterName") as §'4§;
                  if(!_loc4_)
                  {
                     §§push(§0$§.§ H§().writtenName);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop());
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr114:
                           while(true)
                           {
                              addr75:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc3_ || _loc3_))
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
                  §§goto(addr73);
               }
               §§goto(addr124);
            }
            §§goto(addr115);
         }
         §§goto(addr204);
      }
      
      override protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§,R§.getItemByName("Button_Resume") as §^P§).setEnabled(param1);
            while(true)
            {
               (§,R§.getItemByName("Button_Replay") as §^P§).setEnabled(param1);
               while(!_loc2_)
               {
                  while(!(_loc2_ && this))
                  {
                     (§,R§.getItemByName("Button_Sound") as §^P§).setEnabled(param1);
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            (§,R§.getItemByName("Button_Menu") as §^P§).setEnabled(param1);
            §§goto(addr63);
         }
      }
      
      override protected function setPauseMenuButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§,R§.getItemByName("Button_Resume") as §^P§).setComponentVisualState(param1);
            while(true)
            {
               (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
               while(true)
               {
                  (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
                  §§goto(addr77);
               }
            }
         }
         addr77:
         while(true)
         {
            (§,R§.getItemByName("Button_Sound") as §^P§).setComponentVisualState(param1);
            if(_loc3_)
            {
               if(!(_loc2_ && _loc3_))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr68:
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§,w§ != null)
            {
               while(true)
               {
                  §,w§.stop();
                  addr112:
                  while(true)
                  {
                  }
                  loop4:
                  while(!(_loc1_ && _loc1_))
                  {
                     §,w§.play();
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                        addr36:
                     }
                     else
                     {
                        while(!_loc1_)
                        {
                           §,w§.onComplete = §2g§;
                           continue loop4;
                        }
                        §§goto(addr112);
                        addr104:
                     }
                  }
               }
            }
            while(true)
            {
               §,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":OFFSCREEN_X},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":0},{"alpha":1},0.25));
               §§goto(addr104);
               §§goto(addr112);
            }
         }
         §§goto(addr36);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = param2;
         if(_loc6_ || param2)
         {
            §§push("MENU");
            if(_loc6_ || param1)
            {
               §§push(_loc5_);
               if(!(_loc7_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr136:
                        §§push(1);
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr134:
                     §§push("TOGGLESOUND");
                     §§push(_loc5_);
                  }
                  §§goto(addr136);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr136);
               }
               else
               {
                  §§push(2);
               }
               addr144:
               loop3:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §>!9§.§?B§;
                     break;
                     addr88:
                  case 1:
                     §§push(AngryBirdsFP11.§;9§());
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                     }
                     _loc4_ = §§pop();
                     AngryBirdsFP11.§-!9§(_loc4_);
                     loop1:
                     while(true)
                     {
                        addr47:
                        while(true)
                        {
                           §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                           addr54:
                           while(_loc7_)
                           {
                              continue loop1;
                           }
                           break loop3;
                        }
                     }
                     break;
                     addr81:
                     addr71:
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     if(_loc6_ || param2)
                     {
                        if(_loc6_ || param1)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr47);
                              }
                              else
                              {
                                 §§goto(addr88);
                              }
                           }
                           else
                           {
                              §§goto(addr81);
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr54);
                     }
               }
               return;
            }
            §§goto(addr134);
         }
         §§goto(addr136);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.setViewSize(param1,param2);
            while(§,w§)
            {
               if(_loc4_)
               {
                  §,w§.updateState();
               }
               if(_loc4_)
               {
                  addr48:
                  break;
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
