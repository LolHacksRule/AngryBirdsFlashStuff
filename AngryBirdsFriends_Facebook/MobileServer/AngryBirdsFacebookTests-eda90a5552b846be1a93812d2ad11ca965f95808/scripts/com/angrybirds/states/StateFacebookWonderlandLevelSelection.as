package com.angrybirds.states
{
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.assets.AssetCache;
   import com.rovio.data.localization.LocalizationManager;
   import flash.display.MovieClip;
   
   public class StateFacebookWonderlandLevelSelection extends StateFacebookLevelSelection
   {
      
      public static const EPISODE_WONDERLAND:String = "4000";
      
      public static const STATE_NAME:String = "WonderlandLevelSelection";
       
      
      public function StateFacebookWonderlandLevelSelection(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "WonderlandLevelSelection")
      {
         super(levelManager,localizationManager,initState,name);
      }
      
      override protected function initView() : void
      {
         super.initView();
         var bgCls:Class = AssetCache.getAssetFromCache("LevelSelectionBg_Wonderland");
         var mcBg:MovieClip = new bgCls();
         mUIView.getItemByName("MovieClip_LevelSelectionBG").mClip.addChild(mcBg);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         loadFriendsBarScores();
      }
      
      public function get dataModel() : DataModelFriends
      {
         return DataModelFriends(AngryBirdsFacebook.sSingleton.dataModel);
      }
   }
}
