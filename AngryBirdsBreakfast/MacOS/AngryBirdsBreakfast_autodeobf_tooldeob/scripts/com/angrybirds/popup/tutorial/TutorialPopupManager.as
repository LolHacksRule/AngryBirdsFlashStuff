package com.angrybirds.popup.tutorial
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.popup.IPopupManager;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.display.MovieClip;
   
   public class TutorialPopupManager
   {
      
      protected static var mTutorialPopupBin:Class = TutorialPopupManager_mTutorialPopupBin;
      
      protected static var mTutorialPowerUpPopupBin:Class = TutorialPopupManager_mTutorialPowerUpPopupBin;
       
      
      protected var mPopupManager:IPopupManager;
      
      protected var mDataModel:DataModel;
      
      protected var mLinkageSolver:ILinkageSolver;
      
      protected var mTutorialNameMapping:ITutorialMapping;
      
      protected var mLayerIndex:int;
      
      protected var mTitleSolver:ITutorialTitleSolver;
      
      public function TutorialPopupManager(param1:IPopupManager, param2:DataModel, param3:int, param4:ILinkageSolver = null, param5:ITutorialMapping = null, param6:ITutorialTitleSolver = null)
      {
         super();
         this.mPopupManager = param1;
         this.mDataModel = param2;
         this.mLayerIndex = param3;
         this.mLinkageSolver = param4 || new BaseTutorialLinkageSolver();
         this.mTutorialNameMapping = param5 || new BaseTutorialMapping();
         this.mTitleSolver = param6 || new BaseTitleSolver();
      }
      
      public function get linkageSolver() : ILinkageSolver
      {
         return this.mLinkageSolver;
      }
      
      public function set linkageSolver(param1:ILinkageSolver) : void
      {
         this.mLinkageSolver = param1;
      }
      
      public function get tutorialNameMapping() : ITutorialMapping
      {
         return this.mTutorialNameMapping;
      }
      
      public function set tutorialNameMapping(param1:ITutorialMapping) : void
      {
         this.mTutorialNameMapping = param1;
      }
      
      public function get titleSolver() : ITutorialTitleSolver
      {
         return this.mTitleSolver;
      }
      
      public function set titleSolver(param1:ITutorialTitleSolver) : void
      {
         this.mTitleSolver = param1;
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : IPopup
      {
         return new TutorialPopup(this.mLayerIndex,param4,param1,param2,this.titleSolver,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.mDataModel.userProgress.saveTutorialSeen(param2);
         this.mPopupManager.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:ILinkageSolver = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.mDataModel.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.mLinkageSolver = param7;
         }
         var _loc10_:MovieClip = this.mLinkageSolver.solve(param1);
         param8 = !param8 && this.mPopupManager.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:ILinkageSolver = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_.length)
         {
            _loc9_[_loc10_] = true;
            _loc10_++;
         }
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            if(this.mDataModel.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
            {
               if(!param5)
               {
                  param1.splice(_loc10_,1);
                  _loc9_.splice(_loc10_,1);
               }
               else
               {
                  _loc9_[_loc10_] = false;
               }
            }
            _loc10_--;
         }
         if(param1.length == 0)
         {
            return;
         }
         if(param6 != null)
         {
            this.mLinkageSolver = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = PopupPriorityType.OVERRIDE;
         param7 = !param7 && this.mPopupManager.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.mLinkageSolver.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = PopupPriorityType.DEFAULT;
               }
               if(_loc16_ == param1.length - 1 - _loc17_)
               {
                  _loc14_ = param3;
               }
               this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
               _loc16_++;
            }
            else
            {
               _loc17_++;
            }
            _loc10_--;
         }
      }
      
      public function closeCurrentTutorial(param1:Boolean = true) : void
      {
         this.mPopupManager.closePopup(this.mLayerIndex,param1,true,false);
      }
   }
}
