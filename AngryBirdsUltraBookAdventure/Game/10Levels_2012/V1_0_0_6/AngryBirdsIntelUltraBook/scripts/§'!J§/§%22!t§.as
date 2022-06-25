package §'!J§
{
   import §-%§.§]!K§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §"!t§ extends §9!3§
   {
       
      
      public function §"!t§(param1:Boolean = false, param2:String = "CreditsState")
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
         if(!_loc2_)
         {
            super.activate();
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&!m§ = new §4`§(this);
            while(true)
            {
               §&!m§.init(§ !I§.§3!a§.Views.View_Credits[0]);
            }
            addr102:
         }
         loop1:
         while(true)
         {
            §&!m§.getItemByName("MovieClip_Loading").setVisibility(true);
            while(_loc2_)
            {
               §&!m§.getItemByName("Button_FullScreen").setVisibility(false);
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     §+!h§ = new §]!K§(§^!c§.§5!Y§,"INTEL_THEME");
                     while(!_loc1_)
                     {
                        §?C§ = true;
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop1;
               }
            }
            §§goto(addr102);
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(!(_loc5_ && param2))
            {
               §§push(_loc4_);
               if(!(_loc5_ && param3))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(0);
                        if(_loc5_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr134:
                        §§push(1);
                        if(_loc5_ && param1)
                        {
                        }
                     }
                     §§goto(addr147);
                  }
                  else
                  {
                     addr132:
                     §§push("APP_ENGINE_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr134);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr134);
               }
               else
               {
                  §§push(2);
               }
               addr147:
               switch(§§pop())
               {
                  case 0:
                     §#!D§.§9!c§ = §"!s§;
                     addr45:
                     mNextState = §,!]§.§"!s§;
                     if(!(_loc5_ && param3))
                     {
                        break;
                     }
                     break;
                     addr74:
                  case 1:
                     navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                     if(!_loc5_)
                     {
                        if(_loc6_ || param2)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr74);
                        }
                        §§goto(addr45);
                     }
               }
               return;
            }
            §§goto(addr132);
         }
         §§goto(addr134);
      }
   }
}
