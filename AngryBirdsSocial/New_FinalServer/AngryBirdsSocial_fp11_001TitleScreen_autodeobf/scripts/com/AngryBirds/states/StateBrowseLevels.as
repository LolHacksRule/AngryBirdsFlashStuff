package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.ui.ViewBrowseLevels;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UIRepeaterButtonRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class StateBrowseLevels extends StateBase
   {
      
      public static const STATE_NAME:String = "BrowseLevelsState";
      
      public static var smInitiatingState:String = null;
       
      
      public var mLevelData:Array = null;
      
      public function StateBrowseLevels(param1:Boolean = false, param2:String = "BrowseLevelsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewBrowseLevels(this);
         mUIView.init(null);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!contains(AngryBirdsSocial.smLevelMain))
         {
            addChildAt(AngryBirdsSocial.smLevelMain,0);
         }
         AngryBirdsServer.getLevelList(this.getLevelsResponse,0,18);
         mUIView.getItemByName("MovieClip_LoadingIcon").setVisibility(true);
         (mUIView.getItemByName("MovieClip_LoadingIcon") as UIMovieClipRovio).PlayAt(1);
         MouseCursorController.setCursor("");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         if(contains(AngryBirdsSocial.smLevelMain))
         {
            removeChild(AngryBirdsSocial.smLevelMain);
         }
         (mUIView.getItemByName("Repeater_BrowseLevels_LevelSelection") as UIRepeaterRovio).clearTabs();
         this.mLevelData = null;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         if(param2.length > 0 && param3 is UIRepeaterButtonRovio)
         {
            if((param3 as UIRepeaterButtonRovio).mParentContainer.mParentContainer.mName == "Repeater_BrowseLevels_LevelSelection")
            {
               _loc4_ = this.mLevelData[param2].levelKey;
               StateLevelLoad.prepareToLoadExternalLevel(_loc4_);
               AngryBirdsExternalInterface.notifyLevelChange(_loc4_);
               this.mNextState = StateLevelLoad.STATE_NAME;
               return;
            }
         }
         switch(param2)
         {
            case "CLOSE_BROWSE_LEVELS":
               mNextState = smInitiatingState;
         }
      }
      
      public function getLevelsResponse(param1:Object) : void
      {
         var _loc10_:MovieClip = null;
         var _loc11_:String = null;
         var _loc12_:Object = null;
         var _loc13_:XML = null;
         var _loc14_:String = null;
         var _loc15_:DisplayObject = null;
         var _loc2_:Class = AssetCache.getAssetFromCache("Component_BrowseLevels_Level");
         this.mLevelData = new Array();
         var _loc3_:Object = param1;
         var _loc4_:Array;
         (_loc4_ = new Array())[0] = new Array();
         var _loc5_:String = "";
         var _loc7_:Number = 9;
         var _loc8_:Number = 1;
         while(_loc8_ < 100)
         {
            if(_loc3_["level-" + _loc8_] == null)
            {
               _loc7_ = _loc8_;
            }
            _loc8_++;
         }
         var _loc9_:Number = 1;
         while(_loc9_ < _loc7_)
         {
            _loc11_ = "level-" + _loc9_;
            if((_loc12_ = _loc3_[_loc11_]) == null)
            {
               break;
            }
            _loc10_ = new _loc2_();
            _loc11_ = "level-" + _loc9_;
            _loc5_ = _loc12_.levelName + "\nby" + _loc12_.user;
            _loc10_.TextField_LevelName.text = _loc12_.plays.toString();
            if(_loc12_.screenShot != null)
            {
               _loc14_ = _loc12_.screenShot.toString();
               _loc15_ = LevelEditor.decodeImageData(_loc14_);
               _loc10_.ImageContainer_BrowseLevels_Level.addChild(_loc15_);
            }
            this.mLevelData[_loc11_.toUpperCase()] = _loc12_;
            (_loc13_ = <Button/>).@name = _loc11_;
            _loc13_.@MouseUp = _loc11_;
            _loc13_.@Tooltip = _loc5_;
            _loc4_[0].push(new Array(_loc13_,null,_loc10_));
            _loc9_++;
         }
         (mUIView.getItemByName("Repeater_BrowseLevels_LevelSelection") as UIRepeaterRovio).loadTabs(_loc4_);
         (mUIView.getItemByName("Repeater_BrowseLevels_LevelSelection") as UIRepeaterRovio).setVisibleTab("Repeater_BrowseLevels_LevelSelection_Tab_0");
         mUIView.getItemByName("MovieClip_LoadingIcon").setVisibility(false);
         mUIView.getItemByName("Repeater_BrowseLevels_LevelSelection").setVisibility(true);
      }
   }
}
