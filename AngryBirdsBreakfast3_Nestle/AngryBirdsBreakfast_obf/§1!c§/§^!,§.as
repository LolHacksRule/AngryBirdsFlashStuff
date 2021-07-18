package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §,M§.§+f§;
   import §1'§.ColorFadeLayerEvent;
   
   public class §^!,§ extends §"!v§
   {
      
      public static const §8"%§:String = "LevelLoadCreditsCustom";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §^!,§)
         {
            §8"%§ = "LevelLoadCreditsCustom";
         }
      }
      
      public function §^!,§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§ !4§.§%"7§);
               addr69:
               loop1:
               while(true)
               {
                  §§push((§§pop() as AngryBirdsCustom).§<=§);
                  while(true)
                  {
                     §§pop().§9!z§(true);
                     §§push((§§pop() as AngryBirdsCustom).§<=§);
                     addr33:
                     continue loop1;
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().§08§.§;!I§(false);
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr65:
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§ !4§.§%"7§);
            if(!_loc3_)
            {
               §§goto(addr33);
            }
            §§goto(addr69);
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
         do
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§;!I§(true);
         }
         while(!_loc1_);
         
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@T§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
         }
         do
         {
            §7"6§(§1!Z§.§8"%§);
         }
         while(!_loc3_);
         
      }
   }
}
