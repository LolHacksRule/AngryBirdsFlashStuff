package §%w§
{
   import §&!7§.§,!A§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §6v§.§"g§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   
   public class §0!6§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelEndFailState3";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §9!P§ = "LevelEndFailState3";
         }
      }
      
      private var §[2§:§"g§;
      
      public function §0!6§(param1:Boolean = false, param2:String = "LevelEndFailState3")
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.init();
         }
         while(true)
         {
            while(true)
            {
               §3t§ = new §'j§(this);
               do
               {
                  §3t§.init(§0p§.§'! §.Views.View_LevelEndFail3[0]);
               }
               while(_loc3_);
               
               if(_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:§[i§ = §3t§.getItemByName("TextField_LevelFailed") as §[i§;
               if(!_loc3_)
               {
                  _loc1_.setText(§4C§.getText("Text_Level_Failed"));
                  while(true)
                  {
                     this.§[2§ = new §"g§(0,0,0,0);
                     while(_loc2_ || _loc3_)
                     {
                        §3t§.movieClip.addChildAt(this.§[2§,§3t§.movieClip.numChildren - 1);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        return;
                        addr80:
                     }
                  }
               }
               §§goto(addr80);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            §,!A§.§9!M§("levelComplete",§7e§.§^"§,false);
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
         }
         var currentPage:int = 0;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§9!'§.§7!Z§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr112:
                        §9!'§.§7!Z§.start();
                     }
                     while(true)
                     {
                        addr84:
                        loop3:
                        while(_loc4_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§?<§();
                              if(_loc4_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                        }
                     }
                     addr113:
                  }
                  while(true)
                  {
                     this.§[2§.§#R§(0.7);
                     §§goto(addr84);
                     §§goto(addr113);
                  }
               }
               §§goto(addr112);
            }
         }
         §§goto(addr91);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = super.run(param1);
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §&c§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr87);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr88:
                  }
               }
               while(mNextState.length > 0)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr57);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
               return §&c§.STATE_STATUS_RUNNING;
            }
            addr87:
            return _loc2_;
         }
         addr57:
         return §&c§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
         do
         {
            this.§[2§.§6!Y§(0);
         }
         while(!(_loc2_ || this));
         
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§&!3§ = null;
         var _loc5_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" === _loc5_)
            {
               if(!(_loc6_ && param2))
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     addr278:
                  }
               }
               else
               {
                  addr256:
                  §§push(2);
                  if(!_loc7_)
                  {
                     addr314:
                  }
               }
            }
            else if("REPLAY" === _loc5_)
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
                  addr270:
                  §§push(3);
                  if(!(_loc7_ || param1))
                  {
                     §§goto(addr314);
                  }
               }
               §§goto(addr319);
            }
            else if("MENU" === _loc5_)
            {
               if(!(_loc6_ && param3))
               {
                  §§goto(addr256);
               }
               else
               {
                  addr289:
                  §§push(4);
                  if(_loc6_ && this)
                  {
                  }
                  §§goto(addr319);
               }
            }
            else
            {
               if("BUTTON_NO" === _loc5_)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr270);
                  }
               }
               else if("BUTTON_YES" === _loc5_)
               {
                  if(_loc7_ || param2)
                  {
                     §§goto(addr289);
                  }
               }
               else if("CHECKBOX_CHANGE" !== _loc5_)
               {
                  addr319:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §[!X§.§9P§();
                        if(!_loc6_)
                        {
                           mNextState = §[!X§.§9!P§;
                           break;
                           addr131:
                        }
                        break;
                     case 1:
                        if((§7?§.§4!H§ as §<e§).§#n§())
                        {
                           addr110:
                           if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                           {
                              if(!(_loc6_ && param3))
                              {
                                 this.§ A§();
                                 addr125:
                              }
                              break;
                           }
                           addr80:
                           break;
                        }
                        this.§ A§();
                        if(_loc7_ || this)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr125);
                           }
                           §§goto(addr80);
                        }
                        break;
                        §§goto(addr125);
                     case 2:
                        this.§?!§();
                        addr66:
                        break;
                        addr85:
                     case 3:
                        if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                        {
                           addr75:
                           sCheetosPopups.hidePopup();
                           if(_loc6_)
                           {
                              §§goto(addr85);
                           }
                        }
                        break;
                     case 4:
                        if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
                        {
                           if(_loc7_)
                           {
                              if(_loc7_ || this)
                              {
                                 if(_loc7_ || param2)
                                 {
                                    this.§ A§();
                                    if(_loc7_ || param1)
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(true)
                                             {
                                                addr139:
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr131);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr75);
                                       }
                                       §§goto(addr66);
                                    }
                                    break;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr75);
                           }
                           break;
                        }
                        §§goto(addr139);
                     case 5:
                        _loc4_ = param3 as §&!3§;
                        if(!_loc6_)
                        {
                           §§push(§#x§.§=!!§);
                           loop0:
                           while(true)
                           {
                              §§push(§#x§.§=!!§.§9!E§);
                              if(_loc7_ || param3)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().§9!E§ = §§pop();
                              while(true)
                              {
                                 continue loop0;
                                 addr189:
                                 if(_loc7_ || param3)
                                 {
                                    addr196:
                                    _loc4_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                    addr216:
                                    break loop3;
                                    addr200:
                                 }
                              }
                           }
                        }
                        §§goto(addr196);
                  }
                  return;
                  §§push(6);
               }
               §§goto(addr319);
               if(_loc7_)
               {
                  §§goto(addr314);
               }
            }
            §§goto(addr319);
         }
         §§goto(addr256);
      }
      
      private function §?<§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if(!_loc3_)
         {
            if(!(§7?§.§4!H§ as §<e§).§#n§())
            {
               _loc2_.visible = false;
               if(!(_loc3_ && this))
               {
                  addr61:
               }
               else
               {
                  addr88:
               }
               return;
            }
            if(!(_loc3_ && _loc2_))
            {
               _loc2_.visible = true;
            }
            §§goto(addr88);
         }
         §§goto(addr61);
      }
      
      private function § A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!X§.§]!J§();
         }
         do
         {
            mNextState = §[!X§.§9!P§;
         }
         while(!_loc1_);
         
      }
      
      private function §?!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §`L§.§9!P§;
         }
      }
   }
}
