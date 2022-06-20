package §94§
{
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §@#§.§^#Q§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   
   public class §,#E§ extends §'!!§
   {
      
      public static const §4#"§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §,#E§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §+$#§.§["`§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §?Q§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3j§();
      }
      
      public function get dataModel() : §`]§
      {
         return §`]§(§-#+§.§;!$§.dataModel);
      }
   }
}
