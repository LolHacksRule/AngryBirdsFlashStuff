package §40§
{
   import §"m§.§;!v§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9Y§.§6!8§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §`L§ extends §!1§
   {
       
      
      public function §`L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!P§ = new §'!^§(this);
            loop0:
            while(true)
            {
               §5!P§.init(§[!'§.§+@§.Views.View_Credits[0]);
               while(true)
               {
                  §5!P§.getItemByName("MovieClip_Loading").setVisibility(true);
                  loop2:
                  for(; _loc1_; if(!(_loc1_ || this))
                  {
                     continue;
                  })
                  {
                     §5!P§.getItemByName("Button_FullScreen").setVisibility(false);
                     loop3:
                     while(true)
                     {
                        §#j§ = new §;!v§(§ _§.§!6§,"INTEL_THEME");
                        while(true)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                           addr64:
                           §<"§ = true;
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §5!P§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_ || param3)
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
                        addr109:
                        §§push(1);
                        if(_loc5_ && param2)
                        {
                        }
                     }
                     §§goto(addr122);
                  }
                  else
                  {
                     addr107:
                     §§push("APP_ENGINE_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr109);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr109);
               }
               else
               {
                  §§push(2);
               }
               addr122:
               switch(§§pop())
               {
                  case 0:
                     §'!j§.§`]§ = §?h§;
                     if(_loc6_)
                     {
                        addr40:
                        mNextState = §0!`§.§?h§;
                        break;
                        addr45:
                     }
                     break;
                  case 1:
                     navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                     if(_loc6_ || param3)
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr40);
                        }
                        §§goto(addr45);
                     }
               }
               return;
            }
            §§goto(addr107);
         }
         §§goto(addr109);
      }
   }
}
