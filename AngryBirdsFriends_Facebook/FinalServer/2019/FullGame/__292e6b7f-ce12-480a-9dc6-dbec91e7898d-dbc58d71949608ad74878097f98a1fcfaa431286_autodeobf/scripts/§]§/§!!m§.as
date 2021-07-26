package §]§
{
   import §+`§.§%"q§;
   import §7#$§.§]#q§;
   import flash.display.BitmapData;
   
   public class §!!m§ extends §;#D§
   {
      
      private static var §3#E§:BitmapData = null;
       
      
      public function §!!m§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function get §`!f§() : BitmapData
      {
         return §3#E§;
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
