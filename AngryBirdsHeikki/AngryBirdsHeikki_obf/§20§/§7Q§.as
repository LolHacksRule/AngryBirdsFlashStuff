package §20§
{
   import §"!I§.§94§;
   import §'!N§.§<i§;
   import §'!N§.§[!%§;
   import §'!O§.§<r§;
   import §'!O§.§=j§;
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3Q§.§+!]§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   import §@R§.set;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   
   public class §7Q§ extends Popup
   {
      
      private static const §1!]§:Number = 250;
      
      private static var §#!!§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1!]§ = 250;
         }
         do
         {
            §#!!§ = §'!§;
         }
         while(!_loc2_);
         
      }
      
      private var §!!f§:StatePopupManager;
      
      private var §6N§:§&[§ = null;
      
      private var §5v§:Boolean = false;
      
      private var §2m§:Boolean = false;
      
      private var §98§:Number;
      
      private var §#R§:§=p§;
      
      public function §7Q§(param1:§]!Q§, param2:StatePopupManager, param3:§=p§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §+!_§ = new §-k§(0,0,0,0,false);
            while(true)
            {
               super(set.§=!^§(§#!!§),param1);
               loop1:
               for(; !(_loc4_ && param3); if(_loc4_ && param3)
               {
                  continue;
               },this.§#R§ = param3,§§goto(addr44))
               {
                  while(true)
                  {
                     this.§98§ = §>K§.getItemByName("Container_PauseMenu").x;
                     while(true)
                     {
                        this.§!!f§ = param2;
                        while(!_loc4_)
                        {
                           continue loop1;
                           while(_loc5_ || param1)
                           {
                              this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
                              if(_loc5_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
            do
            {
               this.§#R§.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
            }
            while(_loc3_);
            
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§94§ = null;
         var _loc5_:* = param2;
         if(_loc8_ || param2)
         {
            if("HELP" === _loc5_)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(0);
                  if(!(_loc8_ || param2))
                  {
                     addr239:
                  }
               }
               else
               {
                  addr190:
                  §§push(1);
                  if(_loc7_ && param2)
                  {
                     addr217:
                  }
               }
            }
            else if("RESTART_LEVEL" === _loc5_)
            {
               if(!(_loc7_ && param1))
               {
                  §§goto(addr190);
               }
               else
               {
                  addr209:
                  §§push(2);
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr217);
                  }
               }
            }
            else
            {
               if("RESUME_LEVEL" === _loc5_)
               {
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr209);
                  }
               }
               else if("MENU" !== _loc5_)
               {
                  addr244:
                  loop0:
                  while(true)
                  {
                     loop8:
                     switch(§§pop())
                     {
                        case 0:
                           this.§=!-§();
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           addr69:
                           continue;
                        case 1:
                           this.§5v§ = true;
                           while(true)
                           {
                              this.close();
                              break loop8;
                           }
                           break;
                        case 2:
                           this.§=!-§();
                           if(!(_loc7_ && param2))
                           {
                              if(_loc8_)
                              {
                                 break loop0;
                              }
                              break;
                           }
                           break loop0;
                        case 3:
                           §&M§.§=!7§();
                           loop1:
                           while(true)
                           {
                              addr89:
                              while(true)
                              {
                                 this.§2m§ = true;
                                 continue loop1;
                              }
                           }
                     }
                  }
                  continue loop4;
                  return;
                  §§push(4);
               }
               §§goto(addr244);
               if(!(_loc7_ && param1))
               {
                  §§goto(addr239);
               }
            }
            §§goto(addr244);
         }
         §§goto(addr209);
      }
      
      private function §!!L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §=j§.sHighscoreSidebar.enableHelpButton(false);
            loop0:
            while(true)
            {
               this.§5v§ = false;
               while(true)
               {
                  addr39:
                  while(true)
                  {
                     this.§0@§(false);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§§newactivation());
            §§push(§,4§.§0!$§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop());
            }
            §§pop().§§slot[1] = §§pop();
            if(true)
            {
               break;
            }
            §§goto(addr39);
         }
         try
         {
            §§push(§§newactivation());
            §§push(levelName);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop().substring(2));
            }
            §§pop().§§slot[1] = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               (§>K§.getItemByName("TextField_LevelName") as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelName) - 1];
               if(!_loc3_)
               {
                  addr121:
                  §>K§.getItemByName("Container_PauseMenu").x = this.§98§ - §1!]§;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§`!<§(false);
                     loop4:
                     while(true)
                     {
                        §§push(this.§6N§);
                        if(!(_loc3_ && _loc1_))
                        {
                           if(§§pop() != null)
                           {
                              while(true)
                              {
                                 §§push(this.§6N§);
                                 addr224:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr225:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr158:
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr165:
                              }
                           }
                           loop6:
                           while(true)
                           {
                              this.§6N§ = §"!X§.§ s§.§%!;§(§>K§.getItemByName("Container_PauseMenu"),{"x":this.§98§},null,0.25,§"!X§.§@4§);
                              loop7:
                              while(true)
                              {
                                 §§push(this.§6N§);
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    §§pop().onComplete = this.§3!G§;
                                    continue loop4;
                                    while(true)
                                    {
                                       §§push(this.§6N§);
                                       if(!_loc4_)
                                       {
                                          continue loop8;
                                       }
                                       §§pop().play();
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop4;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr165);
                                 }
                              }
                           }
                        }
                        §§goto(addr224);
                     }
                     addr136:
                  }
                  §§goto(addr181);
                  addr97:
               }
               §§goto(addr136);
            }
            §§goto(addr97);
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
         }
         §§goto(addr121);
      }
      
      private function §0@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>K§.getItemByName("TextField_ChapterName").setVisibility(false);
         }
      }
      
      private function §3!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`!<§(true);
         }
      }
      
      private function §`!<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§>K§.getItemByName("Button_Resume") as §<i§).setEnabled(param1);
            while(true)
            {
               (§>K§.getItemByName("Button_Replay") as §<i§).setEnabled(param1);
               loop1:
               while(_loc2_ || param1)
               {
                  while(true)
                  {
                     (§>K§.getItemByName("Button_Menu") as §<i§).setEnabled(param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §=!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.preClose(true);
         }
         loop0:
         while(true)
         {
            §§push(this.§6N§);
            loop1:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                  }
                  addr113:
               }
               loop4:
               while(true)
               {
                  this.§6N§ = §"!X§.§ s§.§%!;§(§>K§.getItemByName("Container_PauseMenu"),{"x":this.§98§ - §1!]§},null,0.25,§"!X§.§<!e§);
                  loop5:
                  while(true)
                  {
                     §§push(this.§6N§);
                     if(!(_loc2_ && this))
                     {
                        continue loop1;
                     }
                     addr112:
                     while(true)
                     {
                        §§pop().stop();
                        break loop5;
                     }
                     addr40:
                     §§pop().play();
                     if(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           break loop4;
                        }
                        break;
                     }
                  }
                  §§goto(addr113);
               }
               return;
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§6N§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6N§);
                     addr157:
                     while(true)
                     {
                        §§pop().stop();
                        addr158:
                        while(true)
                        {
                           this.§6N§ = null;
                           addr134:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr155:
               }
               loop1:
               while(true)
               {
                  §=j§.sHighscoreSidebar.enableHelpButton(true);
                  loop2:
                  while(true)
                  {
                     super.close();
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           this.deActivate();
                           loop4:
                           do
                           {
                              §§push(this.§5v§);
                              while(!§§pop())
                              {
                                 §§push(this.§2m§);
                                 if(!(_loc1_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc1_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§,L§.§+w§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push(§,L§.§[!;§);
                                                if(_loc2_)
                                                {
                                                   §§pop().§9^§(§§pop());
                                                   addr84:
                                                   if(_loc1_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop2;
                                                }
                                                addr110:
                                                §§pop().§9^§(§§pop());
                                                continue loop4;
                                             }
                                             addr108:
                                             §§goto(addr110);
                                             §§push(§<r§.§@o§);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break loop1;
                                                }
                                                break loop3;
                                             }
                                             addr97:
                                          }
                                       }
                                       §§goto(addr84);
                                    }
                                    break loop1;
                                 }
                              }
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr108);
                              §§push(§,L§.§+w§);
                           }
                           while(!_loc2_);
                           
                           while(true)
                           {
                              §<r§.§0^§();
                              §§goto(addr97);
                           }
                           addr113:
                        }
                        else
                        {
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr158);
                  }
               }
               return;
            }
            §§goto(addr157);
         }
         §§goto(addr113);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.open(param1);
            do
            {
               this.§!!L§();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.preClose(param1);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
            do
            {
               super.deActivate();
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
