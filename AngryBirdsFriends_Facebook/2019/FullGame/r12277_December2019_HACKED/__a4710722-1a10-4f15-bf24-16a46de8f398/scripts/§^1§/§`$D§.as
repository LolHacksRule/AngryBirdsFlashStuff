package §^1§
{
   import § #_§.§?!>§;
   import §>#Y§.§,#b§;
   import §?o§.§4#?§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   
   public class §`$D§ extends § "g§
   {
      
      public static const §8V§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §`$D§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §=@§.§9!x§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §@!D§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §1!y§();
      }
      
      public function get dataModel() : §,#b§
      {
         return §,#b§(§^"a§.§9!h§.dataModel);
      }
   }
}
