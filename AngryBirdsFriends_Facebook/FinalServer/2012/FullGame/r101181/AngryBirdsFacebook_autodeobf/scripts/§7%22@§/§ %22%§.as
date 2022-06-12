package §7"@§
{
   import §%!v§.§[<§;
   import §2!i§.§'M§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class § "%§ extends §9<§
   {
       
      
      public function § "%§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
         }
         while(true)
         {
            if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-3"))
            {
               if(_loc1_ || _loc1_)
               {
                  §6w§.getItemByName("ButtonEasterEgg3").setVisibility(true);
                  break;
               }
               break;
            }
            §6w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
            if(!(_loc1_ || this))
            {
               break;
            }
            if(!(_loc1_ || _loc2_))
            {
               continue;
            }
            §§goto(addr24);
         }
         addr24:
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §6w§.setText(param1,"TextField_Version_Number");
            do
            {
               §6w§.setText("","TextField_Version_Number_Server");
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         if(_loc2_)
         {
            _loc1_.§"!r§(§&!7§.§3V§);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
         }
         do
         {
            §6w§.getItemByName("MovieClip_Loading").setVisibility(true);
            do
            {
               §6w§.getItemByName("Button_FullScreen").setVisibility(false);
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_ || param1)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr126:
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           addr162:
                        }
                     }
                     else
                     {
                        addr159:
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr162);
                        }
                     }
                  }
                  else
                  {
                     §§push("EASTER_EGG_3");
                     if(!(_loc5_ && this))
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr159);
                              }
                           }
                           else
                           {
                              addr165:
                              if("APP_ENGINE_BUTTON" !== _loc4_)
                              {
                                 addr179:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       mNextState = §?'§.STATE_NAME;
                                       break;
                                       addr98:
                                    case 1:
                                       §6w§.getItemByName("ButtonEasterEgg3").setVisibility(false);
                                       addr73:
                                       if(!(_loc5_ && param2))
                                       {
                                          addr57:
                                          (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-3");
                                          break;
                                          addr64:
                                       }
                                       else
                                       {
                                          §§goto(addr98);
                                       }
                                       break;
                                    case 2:
                                       navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                                       if(!(_loc5_ && param1))
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             if(!(_loc5_ && param2))
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
                                             §§goto(addr57);
                                          }
                                          §§goto(addr64);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr179);
                           if(_loc5_ && param3)
                           {
                           }
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr126);
      }
   }
}
