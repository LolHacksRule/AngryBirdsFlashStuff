package §5G§
{
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §3!,§.§#x§;
   import §6;§.§%[§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§4I§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §;!8§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelEndFailState3";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §3!?§ = "LevelEndFailState3";
         }
      }
      
      private var §8!H§:§#x§;
      
      public function §;!8§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               loop1:
               while(true)
               {
                  §%!0§ = new §5!§(this);
                  do
                  {
                     §%!0§.init(§>!;§.§ get§.Views.View_LevelEndFail3[0]);
                  }
                  while(!_loc2_);
                  
                  if(_loc3_ && _loc2_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc1_:§'V§ = §%!0§.getItemByName("TextField_LevelFailed") as §'V§;
                  if(_loc2_)
                  {
                     _loc1_.setText(§4I§.getText("Text_Level_Failed"));
                     while(true)
                     {
                        this.§8!H§ = new §#x§(0,0,0,0);
                        loop5:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              §%!0§.movieClip.addChildAt(this.§8!H§,§%!0§.movieClip.numChildren - 1);
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr42);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!!@§.§%Q§("levelComplete",§5!9§.§-!O§.§ !&§(§@;§.§6!K§),false);
         }
         var _loc1_:int = 0;
         if(_loc3_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§%[§.§`1§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§%[§.§`1§);
                        addr108:
                        while(true)
                        {
                           §§pop().start();
                           addr109:
                           while(true)
                           {
                           }
                        }
                        addr74:
                        if(_loc3_ || _loc2_)
                        {
                           loop7:
                           while(true)
                           {
                              §>d§.§@Y§(§>d§.§?+§,§@;§.§6!K§);
                              if(_loc3_ || _loc1_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr87:
                              while(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr74);
                                 continue loop7;
                              }
                              while(!_loc2_)
                              {
                                 this.§+g§();
                                 §§goto(addr67);
                              }
                              addr67:
                              §§goto(addr109);
                           }
                           return;
                           addr81:
                        }
                     }
                  }
                  while(true)
                  {
                     this.§8!H§.§'H§(0.7);
                     §§goto(addr87);
                     §§goto(addr109);
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr81);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        return §%!$§.STATE_STATUS_COMPLETED;
                     }
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        addr81:
                        return _loc2_;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §%!$§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr81);
         }
         §§goto(addr83);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         do
         {
            this.§8!H§.§"!c§(0);
         }
         while(_loc2_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§0j§ = null;
         var _loc5_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" !== _loc5_)
            {
               if("REPLAY" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr353:
                     §§push(4);
                     if(_loc6_)
                     {
                        §§goto(addr365);
                     }
                     else
                     {
                        addr356:
                     }
                  }
               }
               else if("MENU" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(2);
                     if(!(_loc7_ || param3))
                     {
                        addr347:
                     }
                  }
                  else
                  {
                     §§goto(addr353);
                  }
               }
               else if("BUTTON_NO" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(3);
                     if(_loc7_)
                     {
                        §§goto(addr347);
                     }
                     else
                     {
                        §§goto(addr356);
                     }
                  }
                  else
                  {
                     addr362:
                     §§push(5);
                     if(_loc7_)
                     {
                        §§goto(addr365);
                     }
                  }
               }
               else if("BUTTON_YES" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr353);
                  }
                  else
                  {
                     §§goto(addr362);
                  }
               }
               else
               {
                  if("CREDIT_OK" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr362);
                     }
                     else
                     {
                        §§goto(addr369);
                     }
                  }
                  else if("CHECKBOX_CHANGE" === _loc5_)
                  {
                     §§goto(addr369);
                  }
                  else
                  {
                     §§push(7);
                  }
                  §§goto(addr369);
               }
               addr392:
               loop0:
               while(true)
               {
                  switch(§§pop())
                  {
                     case 0:
                        §'!9§.§-4§();
                        mNextState = §'!9§.§3!?§;
                        break;
                        addr227:
                     case 1:
                        §§push((§@!Z§.§;!,§ as § $§).§,!e§());
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§>f§.§%!`§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr213:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue loop2;
                                                      }
                                                      this.§+8§();
                                                   }
                                                }
                                                break;
                                                addr175:
                                             }
                                             else
                                             {
                                                addr140:
                                             }
                                             §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                                             break;
                                          }
                                          addr109:
                                          break loop0;
                                          addr173:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              addr210:
                           }
                           else
                           {
                              this.§+8§();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr181);
                                 }
                                 §§goto(addr109);
                              }
                              addr129:
                           }
                           §§goto(addr181);
                        }
                        break;
                        addr209:
                     case 2:
                        this.§+!K§();
                        addr114:
                        if(_loc7_ || param2)
                        {
                           if(_loc7_)
                           {
                              break loop0;
                           }
                           §§goto(addr227);
                        }
                        else
                        {
                           §§goto(addr200);
                        }
                     case 3:
                        if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                        {
                           addr85:
                           if(!(_loc6_ && param3))
                           {
                              if(_loc7_ || param2)
                              {
                                 sCheetosPopups.hidePopup();
                                 addr101:
                                 if(!(_loc6_ && this))
                                 {
                                    addr42:
                                    break loop0;
                                 }
                                 break;
                              }
                              §§goto(addr129);
                           }
                           else
                           {
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr42);
                     case 4:
                        if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
                        {
                           if(_loc7_ || this)
                           {
                              if(!_loc6_)
                              {
                                 if(_loc7_ || param3)
                                 {
                                    if(_loc7_)
                                    {
                                       this.§+8§();
                                       if(!_loc6_)
                                       {
                                          addr73:
                                          if(_loc7_)
                                          {
                                             addr21:
                                             break loop0;
                                          }
                                          §§goto(addr140);
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr210);
                                    §§goto(addr140);
                                 }
                                 §§goto(addr175);
                              }
                              else
                              {
                                 §§goto(addr85);
                              }
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr21);
                     case 5:
                        sCheetosPopups.hidePopup();
                        if(!(_loc6_ && param2))
                        {
                           if(!(_loc6_ && this))
                           {
                              if(true)
                              {
                                 break loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr42);
                        }
                        break loop0;
                     case 6:
                        _loc4_ = param3 as §0j§;
                        if(_loc7_ || param2)
                        {
                           addr287:
                           §§push(§5!9§.§-!O§);
                           §§push(§5!9§.§-!O§.§8!&§);
                           if(!_loc6_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§8!&§ = §§pop();
                        }
                        addr294:
                        §§push(§5!9§.§-!O§);
                        if(_loc7_ || param1)
                        {
                           if(§§pop().§8!&§)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              }
                              addr282:
                              if(!_loc7_)
                              {
                                 §§goto(addr294);
                              }
                              addr295:
                              break loop0;
                           }
                           _loc4_.setComponentState(§0j§.§+o§);
                           if(!(_loc6_ && param1))
                           {
                              if(false)
                              {
                                 §§goto(addr294);
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr287);
                  }
                  §§push(§§pop().§`!b§);
                  break;
                  if(!(_loc7_ || param2))
                  {
                     continue;
                  }
                  §§push(§§pop() >= §"!d§.§"!Q§);
                  if(_loc7_ || param1)
                  {
                     if(_loc7_)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr173);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr215);
               }
               return;
            }
            if(!_loc6_)
            {
               §§push(0);
               if(_loc6_ && param1)
               {
                  addr365:
               }
            }
            else
            {
               addr369:
               §§push(6);
               if(_loc7_ || param2)
               {
               }
            }
            §§goto(addr392);
            §§goto(addr369);
         }
         §§goto(addr362);
      }
      
      private function §+g§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(_loc3_)
         {
            if(!(§@!Z§.§;!,§ as § $§).§,!e§())
            {
               _loc2_.visible = false;
               if(_loc4_ && _loc2_)
               {
                  addr82:
               }
               return;
            }
            if(!_loc4_)
            {
               addr79:
               _loc2_.visible = true;
            }
            §§goto(addr82);
         }
         §§goto(addr79);
      }
      
      private function §+8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!9§.§7T§();
            do
            {
               mNextState = §'!9§.§3!?§;
            }
            while(_loc1_);
            
         }
      }
      
      private function §+!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!7§.§13§();
            do
            {
               mNextState = §39§.§3!?§;
            }
            while(!_loc1_);
            
         }
      }
   }
}
