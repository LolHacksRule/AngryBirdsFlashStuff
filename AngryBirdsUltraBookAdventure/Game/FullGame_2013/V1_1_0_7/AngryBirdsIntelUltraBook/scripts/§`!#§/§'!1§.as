package §`!#§
{
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §48§.§>6§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §'!1§ extends §<&§
   {
       
      
      public function §'!1§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!Q§ = new §&!G§(this);
            loop0:
            while(true)
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_Credits[0]);
               loop1:
               while(true)
               {
                  §'!Q§.getItemByName("MovieClip_Loading").setVisibility(true);
                  while(true)
                  {
                     §'!Q§.getItemByName("Button_FullScreen").setVisibility(false);
                     while(!_loc1_)
                     {
                        while(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              §]!E§ = true;
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §0! § = new §>6§(§,!s§.§=!I§,"INTEL_THEME");
            §§goto(addr61);
         }
         §§goto(addr52);
      }
      
      override protected function setVersionTexts(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop().replace(")",""));
            }
            param1 = §§pop();
            while(true)
            {
               §'!Q§.setText(param1,"TextField_Version_Number");
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §'!Q§.setText(param2,"TextField_Version_Number_Server");
            if(_loc3_ || param2)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(_loc5_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           addr131:
                        }
                     }
                     else
                     {
                        addr123:
                        §§push(1);
                        if(_loc5_ || param3)
                        {
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     addr121:
                     §§push("APP_ENGINE_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr123);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr123);
               }
               else
               {
                  §§push(2);
               }
               addr136:
               switch(§§pop())
               {
                  case 0:
                     §!!2§.§%!i§ = §'!q§;
                     addr46:
                     mNextState = §8"!§.§'!q§;
                     break;
                     addr68:
                     addr51:
                  case 1:
                     navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                     if(_loc5_ || param1)
                     {
                        if(_loc5_ || param3)
                        {
                           if(_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr51);
                     }
               }
               return;
            }
            §§goto(addr121);
         }
         §§goto(addr123);
      }
   }
}
