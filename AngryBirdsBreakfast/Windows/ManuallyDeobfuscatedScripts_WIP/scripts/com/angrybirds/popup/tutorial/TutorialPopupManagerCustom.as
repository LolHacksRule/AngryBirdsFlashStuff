package com.angrybirds.popup.tutorial
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.popup.IPopupManager;
   import com.angrybirds.popups.events.PopupClosedEvent;
   import com.angrybirds.popups.PopupTutorial;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class TutorialPopupManagerCustom extends TutorialPopupManager
   {
       
      
      private var mTutorialPopupsOpen:Vector.<PopupTutorial>;
      
      public function TutorialPopupManagerCustom(param1:IPopupManager, param2:DataModel, param3:int, param4:ILinkageSolver = null, param5:ITutorialMapping = null)
      {
         super(param1,param2,param3,param4,param5);
         this.mTutorialPopupsOpen = new Vector.<PopupTutorial>();
      }
      
      protected function getTutorialPopupCustom(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : PopupTutorial
      {
         return new PopupTutorial(mLayerIndex,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         mDataModel.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:PopupTutorial = this.getTutorialPopupCustom(param1,param2,param3,param4,_loc9_,param6);
         this.mTutorialPopupsOpen.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.ON_POPUP_CLOSE,this.onPopupClose);
         mPopupManager.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:ILinkageSolver = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(param5)
         {
            if(mDataModel.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            mLinkageSolver = param7;
         }
         var _loc9_:MovieClip = mLinkageSolver.solve(param1);
         param8 = param8 && mPopupManager.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !mDataModel.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function onPopupClose(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.mTutorialPopupsOpen.length)
         {
            if(this.mTutorialPopupsOpen[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.mTutorialPopupsOpen.splice(_loc2_,1);
         }
      }
   }
}
