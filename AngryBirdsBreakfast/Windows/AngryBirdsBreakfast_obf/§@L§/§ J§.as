package §@L§
{
   import § ! §.§5!x§;
   import § ! §.§=!>§;
   import § ! §.§?b§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §+!!§.§5"+§;
   import §+!!§.§>Y§;
   import §,!A§.§ x§;
   import §,!A§.§,a§;
   import §,C§.§+§;
   import §,C§.§+"$§;
   import §,z§.§&!e§;
   import §,z§.§&"§;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import flash.display.Stage;
   
   public class § J§ extends §?!'§
   {
       
      
      public function § J§(param1:Stage, param2:§#!R§, param3:§+§, param4:§5!Y§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function initializeLevelObjectManager(param1:§5!0§) : §&"§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§+"$§.§;!@§);
         if(_loc3_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return new §&!e§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§5!0§) : §5"+§
      {
         return new §>Y§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§5!0§) : §;!3§
      {
         return new §0!i§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §=!>§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §=!>§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§,a§));
         if(!_loc1_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && this))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr70);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr69);
               }
               addr57:
               if(!§§pop())
               {
                  addr69:
                  §§pop();
               }
               §§goto(addr70);
            }
            addr70:
            if(!_loc1_)
            {
               §§pop();
               addr49:
               §§push("");
            }
            return new §§pop().§,a§(§§pop(),"",§&" §,§%!I§(§@!H§));
         }
         §§goto(addr49);
      }
      
      override protected function initAnimationManager(param1:§5!x§) : §?b§
      {
         return new § x§(param1);
      }
   }
}
