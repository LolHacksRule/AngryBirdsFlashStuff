package §8!_§
{
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§9"!§;
   
   public class §>!N§ extends §6Q§
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            STATE_NAME = "LevelLoadCreditsCustom";
         }
      }
      
      public function §>!N§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
            do
            {
               §8!^§(§4!U§.STATE_NAME);
            }
            while(!_loc3_);
            
         }
      }
   }
}
