package §8!_§
{
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§9"!§;
   
   public class §>!N§ extends §6Q§
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
       
      
      public function §>!N§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         §!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
         §8!^§(§4!U§.STATE_NAME);
      }
   }
}
