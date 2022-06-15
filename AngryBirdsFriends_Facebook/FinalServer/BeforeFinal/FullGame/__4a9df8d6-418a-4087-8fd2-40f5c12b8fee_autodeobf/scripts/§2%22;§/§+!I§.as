package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§4!Q§;
   import §,"v§.§;"n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class §+!I§ extends §`"A§
   {
      
      public static const §3"J§:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function §+!I§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "WonderlandLevelSelection")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var _loc1_:Class = §6$A§.§1!m§("LevelSelectionBg_Wonderland");
         var _loc2_:MovieClip = new _loc1_();
         §[$5§.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(_loc2_);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"7§();
      }
      
      public function get dataModel() : §4!Q§
      {
         return §4!Q§(§ #v§.§1!!§.dataModel);
      }
   }
}
