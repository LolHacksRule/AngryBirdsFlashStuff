package com.angrybirds.states
{
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import flash.display.BitmapData;
   
   public class StateFacebookStart extends StateStart
   {
      
      private static var _avatarGraphic:BitmapData = null;
       
      
      public function StateFacebookStart(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelStartState")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      public static function get avatarGraphic() : BitmapData
      {
         return _avatarGraphic;
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
