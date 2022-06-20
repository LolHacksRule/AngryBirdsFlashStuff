package §94§
{
   import §&$!§.§+#!§;
   import §@#§.§^#Q§;
   import flash.display.BitmapData;
   
   public class §&$-§ extends §+$,§
   {
      
      private static var §"!]§:BitmapData = null;
       
      
      public function §&$-§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function get §&#T§() : BitmapData
      {
         return §"!]§;
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
