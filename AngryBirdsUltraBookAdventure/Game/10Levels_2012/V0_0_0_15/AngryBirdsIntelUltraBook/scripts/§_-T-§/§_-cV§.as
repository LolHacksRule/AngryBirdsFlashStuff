package §_-T-§
{
   import §_-0Dg§.§class§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-Rp§;
   import §_-qO§.§ in§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-cV§ extends §_-7A§
   {
       
      
      public function §_-cV§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-s0§ = new §_-5q§(this);
            while(true)
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_Credits[0]);
               while(!_loc2_)
               {
                  addr62:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §_-I8§ = true;
                  addr69:
                  if(_loc1_ || _loc2_)
                  {
                     addr34:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           §_-s0§.getItemByName("Button_FullScreen").setVisibility(false);
                           while(true)
                           {
                              §_-kL§ = new §class§(§ in§.§_-Dc§,"INTEL_THEME");
                              addr55:
                              while(_loc1_ || _loc1_)
                              {
                                 §§goto(addr62);
                                 §§goto(addr69);
                              }
                           }
                           §§goto(addr34);
                        }
                        addr93:
                     }
                     return;
                  }
                  §§goto(addr55);
               }
            }
         }
         while(true)
         {
            §_-s0§.getItemByName("MovieClip_Loading").setVisibility(true);
            §§goto(addr93);
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc5_ || param2)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        addr111:
                        §§push(0);
                        if(!(_loc5_ || this))
                        {
                           addr131:
                        }
                     }
                     else
                     {
                        addr123:
                        §§push(1);
                        if(_loc5_ || param1)
                        {
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     §§goto(addr122);
                  }
               }
               §§goto(addr122);
            }
            addr122:
            if("APP_ENGINE_BUTTON" === _loc4_)
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
                  §_-aa§.§_-yr§ = §_-pk§;
                  if(_loc5_)
                  {
                     addr42:
                     mNextState = §_-Rp§.§_-pk§;
                     if(_loc5_)
                     {
                        break;
                     }
                     break;
                  }
                  break;
               case 1:
                  navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                  if(_loc5_ || param2)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr42);
                  }
            }
            return;
         }
         §§goto(addr111);
      }
   }
}
