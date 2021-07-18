package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§<U§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   
   public class §<K§ extends §]u§
   {
      
      public static const §`O§:String = "LevelEndFailState3";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §<K§))
         {
            §`O§ = "LevelEndFailState3";
         }
      }
      
      private var §+W§:§<U§;
      
      public function §<K§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  §"c§ = new §,!N§(this);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §"c§.init(§@]§.§3!6§.Views.View_LevelEndFail3[0]);
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var _loc1_:§1!-§ = §"c§.getItemByName("TextField_LevelFailed") as §1!-§;
         if(_loc3_)
         {
            _loc1_.setText(§6!7§.getText("Text_Level_Failed"));
            while(true)
            {
               this.§+W§ = new §<U§(0,0,0,0);
               loop5:
               while(_loc3_ || _loc2_)
               {
                  while(true)
                  {
                     §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop5;
                  }
                  return;
               }
            }
         }
         §§goto(addr113);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §,Y§.§[[§("levelComplete",§[!!§.§7!F§,false);
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
         }
         var currentPage:int = 0;
         if(!_loc4_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§0Z§.§4J§);
                        addr111:
                        while(true)
                        {
                           §§pop().start();
                           addr112:
                           while(true)
                           {
                           }
                        }
                        addr72:
                        if(_loc3_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§+W§.§9>§(0.7);
                     §§goto(addr92);
                  }
               }
               §§goto(addr111);
            }
         }
         addr92:
         while(true)
         {
            this.§;z§();
            if(_loc4_)
            {
               continue;
            }
            if(!(_loc3_ || _loc2_))
            {
               continue loop2;
            }
            §§goto(addr72);
         }
         addr86:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §[4§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        addr87:
                     }
                     if(!(_loc3_ && this))
                     {
                        return §[4§.STATE_STATUS_COMPLETED;
                     }
                     continue;
                     while(true)
                     {
                        continue loop0;
                     }
                     return _loc2_;
                  }
                  return §[4§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            do
            {
               this.§+W§.§5!<§(0);
            }
            while(_loc1_ && this);
            
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§<d§ = null;
         var _loc5_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" === _loc5_)
            {
               if(_loc7_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr309);
               }
               else
               {
                  §§goto(addr246);
               }
            }
            else if("REPLAY" === _loc5_)
            {
               if(_loc7_ || param2)
               {
                  §§push(1);
                  if(!_loc7_)
                  {
                     addr304:
                  }
               }
               else
               {
                  §§goto(addr246);
               }
            }
            else if("MENU" === _loc5_)
            {
               if(_loc7_)
               {
                  addr246:
                  §§push(2);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr309);
               }
               else
               {
                  addr260:
                  §§push(3);
                  if(_loc7_ || param2)
                  {
                  }
               }
            }
            else
            {
               if("BUTTON_NO" === _loc5_)
               {
                  if(!(_loc6_ && param3))
                  {
                     §§goto(addr260);
                  }
               }
               else if("BUTTON_YES" === _loc5_)
               {
                  if(_loc7_ || param3)
                  {
                     §§push(4);
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr287);
                     }
                     else
                     {
                        §§goto(addr304);
                     }
                  }
               }
               else if("CHECKBOX_CHANGE" !== _loc5_)
               {
                  addr309:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        §0"§.§>!U§();
                        loop0:
                        while(true)
                        {
                           mNextState = §0"§.§`O§;
                           addr136:
                           while(true)
                           {
                              if(_loc7_ || param2)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        break;
                     case 1:
                        if((§[&§.§&!'§ as §!&§).§`!P§())
                        {
                           addr115:
                           if(_loc7_ || param1)
                           {
                              if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                              {
                                 addr128:
                                 this.§;!F§();
                                 addr130:
                              }
                              addr85:
                              break;
                           }
                           §§goto(addr136);
                        }
                        else
                        {
                           this.§;!F§();
                           addr103:
                           if(!_loc7_)
                           {
                              §§goto(addr130);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr130);
                     case 2:
                        this.§5!!§();
                        addr90:
                        if(_loc7_ || param1)
                        {
                           addr59:
                           break;
                        }
                        §§goto(addr103);
                        break;
                     case 3:
                        if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                        {
                           addr68:
                           if(_loc7_ || this)
                           {
                              if(!(_loc6_ && this))
                              {
                                 sCheetosPopups.hidePopup();
                                 addr21:
                                 break;
                                 addr84:
                              }
                              else
                              {
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr21);
                     case 4:
                        if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
                        {
                           if(_loc7_)
                           {
                              this.§;!F§();
                              if(_loc6_ && this)
                              {
                              }
                              break;
                           }
                           if(!(_loc6_ && this))
                           {
                              if(!(_loc6_ && param1))
                              {
                                 if(_loc7_)
                                 {
                                    if(true)
                                    {
                                       addr159:
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr90);
                                 }
                                 §§goto(addr59);
                              }
                              else
                              {
                                 §§goto(addr68);
                              }
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr159);
                     case 5:
                        _loc4_ = param3 as §<d§;
                        if(_loc7_)
                        {
                           §§push(§,l§.§,?§);
                           loop2:
                           while(true)
                           {
                              §§push(§,l§.§,?§.§+d§);
                              if(!_loc6_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§+d§ = §§pop();
                              loop3:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(§,l§.§,?§);
                                    if(_loc7_)
                                    {
                                       if(§§pop().§+d§)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             addr196:
                                             _loc4_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             break;
                                          }
                                          break;
                                       }
                                       _loc4_.setComponentState(§<d§.§^#§);
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       if(!_loc6_)
                                       {
                                          if(true)
                                          {
                                             break loop5;
                                          }
                                          addr211:
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr211);
                              }
                           }
                        }
                        §§goto(addr196);
                  }
                  return;
                  §§push(6);
               }
               §§goto(addr309);
               if(!_loc6_)
               {
                  §§goto(addr304);
               }
            }
            §§goto(addr309);
         }
         §§goto(addr246);
      }
      
      private function §;z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(!(_loc4_ && _loc1_))
         {
            if(!(§[&§.§&!'§ as §!&§).§`!P§())
            {
               _loc2_.visible = false;
               if(_loc3_)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr84:
                     _loc2_.visible = true;
                     addr87:
                  }
                  return;
               }
               §§goto(addr87);
            }
         }
         §§goto(addr84);
      }
      
      private function §;!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0"§.§!7§();
         }
         do
         {
            mNextState = §0"§.§`O§;
         }
         while(!_loc1_);
         
      }
      
      private function §5!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §6l§.§`O§;
         }
      }
   }
}
