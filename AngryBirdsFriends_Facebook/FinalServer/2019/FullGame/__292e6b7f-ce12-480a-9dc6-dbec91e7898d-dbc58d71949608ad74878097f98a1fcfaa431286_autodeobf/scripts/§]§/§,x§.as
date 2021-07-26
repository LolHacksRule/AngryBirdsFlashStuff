package §]§
{
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §7#$§.§]#q§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class §,x§ extends §!=§
   {
      
      public static const §0Y§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §,x§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §[a§.§8#k§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §;!w§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§();
      }
      
      public function get dataModel() : §=#o§
      {
         return §=#o§(§@z§.§ !D§.dataModel);
      }
   }
}
