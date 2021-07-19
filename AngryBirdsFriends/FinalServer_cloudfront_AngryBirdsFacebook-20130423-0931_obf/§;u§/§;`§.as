package §;u§
{
   import §1!t§.§""B§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §@!%§.§#!$§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §;`§ extends §&"[§
   {
       
      
      public function §;`§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            for(; (AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-3"); if(!_loc1_)
            {
               break;
            },if(_loc2_)
            {
               continue;
            },§§goto(addr24))
            {
               §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(false);
               if(!(_loc2_ && _loc1_))
               {
                  continue;
               }
            }
            §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(true);
         }
         addr24:
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §2"@§.setText(param1,"TextField_Version_Number");
         }
         do
         {
            §2"@§.setText("","TextField_Version_Number_Server");
         }
         while(_loc4_);
         
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         if(_loc3_ || this)
         {
            _loc1_.§3%§(§;!e§.§^a§);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §2"@§.getItemByName("MovieClip_Loading").setVisibility(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §2"@§.getItemByName("Button_FullScreen").setVisibility(false);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc6_ && param1))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr156:
                        }
                     }
                     else
                     {
                        addr160:
                        §§push(2);
                        if(_loc5_ || param1)
                        {
                        }
                     }
                     §§goto(addr173);
                  }
                  else
                  {
                     §§push("EASTER_EGG_3");
                     if(_loc5_ || param1)
                     {
                        addr127:
                        §§push(_loc4_);
                        if(!(_loc6_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr156);
                                 }
                              }
                              else
                              {
                                 §§goto(addr160);
                              }
                              §§goto(addr173);
                           }
                           else
                           {
                              §§push("APP_ENGINE_BUTTON");
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr159);
                     }
                     §§push(_loc4_);
                  }
                  §§goto(addr160);
               }
               addr159:
               if(§§pop() === §§pop())
               {
                  §§goto(addr160);
               }
               else
               {
                  §§push(3);
               }
               addr173:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §9!V§.STATE_NAME;
                     break;
                     addr72:
                  case 1:
                     §2"@§.getItemByName("ButtonEasterEgg3").setVisibility(false);
                     addr44:
                     (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-3");
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr72);
                     }
                     break;
                     addr64:
                  case 2:
                     navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && param2))
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr44);
                     }
               }
               return;
            }
            §§goto(addr127);
         }
         §§goto(addr160);
      }
   }
}
