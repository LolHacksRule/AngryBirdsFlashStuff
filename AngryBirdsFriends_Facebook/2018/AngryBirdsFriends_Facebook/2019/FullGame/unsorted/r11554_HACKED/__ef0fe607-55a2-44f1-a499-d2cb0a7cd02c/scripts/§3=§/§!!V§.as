package §3=§
{
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   
   public class §!!V§ extends §%"#§
   {
      
      public static const §""W§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §!!V§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §2"O§.§`>§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §<"`§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?$ §();
      }
      
      public function get dataModel() : §@"%§
      {
         return §@"%§(§'"a§.§!!8§.dataModel);
      }
   }
}
