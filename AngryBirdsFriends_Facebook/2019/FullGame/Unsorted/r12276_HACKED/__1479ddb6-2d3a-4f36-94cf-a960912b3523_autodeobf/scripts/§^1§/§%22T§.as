package §^1§
{
   import § #_§.§?!>§;
   import §?o§.§4#?§;
   import flash.display.BitmapData;
   
   public class §"T§ extends §=!w§
   {
      
      private static var §3!B§:BitmapData = null;
       
      
      public function §"T§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function get §;$A§() : BitmapData
      {
         return §3!B§;
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
