package §"!@§
{
   import §2G§.§#"8§;
   import §5P§.§""C§;
   import §;$3§.§8=§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   
   public class §>N§ extends §false§
   {
      
      public static const §]$+§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §>N§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §!"f§.§##?§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §`!H§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,"j§();
      }
      
      public function get dataModel() : §#"8§
      {
         return §#"8§(§,A§.§2#O§.dataModel);
      }
   }
}
