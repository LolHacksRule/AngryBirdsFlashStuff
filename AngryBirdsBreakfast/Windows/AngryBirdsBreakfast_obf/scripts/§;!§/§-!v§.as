package §;!§
{
   import §&v§.§#!R§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.ColorFadeLayerEvent;
   
   public class §-!v§ extends §2q§
   {
      
      public static const §-!q§:String = "LevelLoadCreditsCustom";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!q§ = "LevelLoadCreditsCustom";
         }
      }
      
      public function §-!v§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            do
            {
               §?P§.movieClip.cacheAsBitmap = true;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §'x§.removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
         }
         do
         {
            §<f§(§&4§.§-!q§);
         }
         while(!_loc2_);
         
      }
   }
}
