package §2";§
{
   import § !j§.§4#c§;
   import §,"v§.§;"n§;
   import flash.display.BitmapData;
   
   public class §#+§ extends §,!F§
   {
      
      private static var §9!+§:BitmapData = null;
       
      
      public function §#+§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function get §?$7§() : BitmapData
      {
         return §9!+§;
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
