package com.angrybirds.popup.tutorial
{
   import com.angrybirds.data.DataModel;
   import com.rovio.ui.popup.IPopup;
   import com.rovio.ui.popup.IPopupManager;
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
      
      public function TutorialPopupManager(popupManager:IPopupManager, dataModel:DataModel, layerIndex:int, linkageSolver:ILinkageSolver = null, tutorialNameMapper:ITutorialMapping = null, titleSolver:ITutorialTitleSolver = null)
      {
         super();
         this.init(popupManager,dataModel,layerIndex,linkageSolver,tutorialNameMapper,titleSolver);
      }
      
      public function get linkageSolver() : ILinkageSolver
      {
         return this.mLinkageSolver;
      }
      
      public function set linkageSolver(value:ILinkageSolver) : void
      {
         this.mLinkageSolver = value;
      }
      
      public function get tutorialNameMapping() : ITutorialMapping
      {
         return this.mTutorialNameMapping;
      }
      
      public function set tutorialNameMapping(value:ITutorialMapping) : void
      {
         this.mTutorialNameMapping = value;
      }
      
      public function get titleSolver() : ITutorialTitleSolver
      {
         return this.mTitleSolver;
      }
      
      public function set titleSolver(value:ITutorialTitleSolver) : void
      {
         this.mTitleSolver = value;
      }
      
      protected function init(popupManager:IPopupManager, dataModel:DataModel, layerIndex:int, linkageSolver:ILinkageSolver = null, tutorialNameMapper:ITutorialMapping = null, titleSolver:ITutorialTitleSolver = null) : void
      {
         this.mPopupManager = popupManager;
         this.mDataModel = dataModel;
         this.mLayerIndex = layerIndex;
         this.mLinkageSolver = linkageSolver || new BaseTutorialLinkageSolver();
         this.mTutorialNameMapping = tutorialNameMapper || new BaseTutorialMapping();
         this.mTitleSolver = titleSolver || new BaseTitleSolver();
      }
      
      protected function getTutorialPopup(tutorialClip:MovieClip, name:String, firstRun:Boolean, priority:int) : IPopup
      {
         return new TutorialPopup(this.mLayerIndex,priority,tutorialClip,name,this.titleSolver,firstRun);
      }
      
      protected function openPopup(tutorialClip:MovieClip, name:String, firstRun:Boolean, priority:int, useTransitionIn:Boolean = true, useTransitionOut:Boolean = true, useTransitionOutOfPrevious:Boolean = true, forceOpen:Boolean = false) : void
      {
         this.mDataModel.userProgress.saveTutorialSeen(name);
         this.mPopupManager.openPopup(this.getTutorialPopup(tutorialClip,name,firstRun,priority),useTransitionIn,useTransitionOut,useTransitionOutOfPrevious,forceOpen);
      }
      
      public function openTutorialPopup(tutorialName:String, priority:int, useTransitionIn:Boolean = true, useTransitionOut:Boolean = true, forceSee:Boolean = false, useTransitionOutOfPrevious:Boolean = true, linkageSolver:ILinkageSolver = null, forceOpen:Boolean = true) : void
      {
         var firstRun:Boolean = true;
         if(this.mDataModel.userProgress.hasTutorialBeenSeen(tutorialName))
         {
            if(!forceSee)
            {
               return;
            }
            firstRun = false;
         }
         if(linkageSolver != null)
         {
            this.mLinkageSolver = linkageSolver;
         }
         var tutorialClip:MovieClip = this.mLinkageSolver.solve(tutorialName);
         forceOpen = !forceOpen && this.mPopupManager.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(forceOpen);
         if(tutorialClip)
         {
            this.openPopup(tutorialClip,tutorialName,firstRun,priority,useTransitionIn,useTransitionOut,useTransitionOutOfPrevious,forceOpen);
         }
      }
      
      public function openMultipleTutorialPopups(tutorialNames:Vector.<String>, useTransitionIn:Boolean = true, useTransitionOut:Boolean = true, useTransitionOutOfPrevious:Boolean = true, forceSee:Boolean = false, linkageSolver:ILinkageSolver = null, forceOpen:Boolean = true, useTransitionInForOnlyFirstPopup:Boolean = true) : void
      {
         var tutorialClip:MovieClip = null;
         var tutorialName:String = null;
         var firstRuns:Vector.<Boolean> = new Vector.<Boolean>(tutorialNames.length);
         for(var i:int = 0; i < firstRuns.length; i++)
         {
            firstRuns[i] = true;
         }
         for(i = tutorialNames.length - 1; i >= 0; i--)
         {
            if(this.mDataModel.userProgress.hasTutorialBeenSeen(tutorialNames[i]))
            {
               if(!forceSee)
               {
                  tutorialNames.splice(i,1);
                  firstRuns.splice(i,1);
               }
               else
               {
                  firstRuns[i] = false;
               }
            }
         }
         if(tutorialNames.length == 0)
         {
            return;
         }
         if(linkageSolver != null)
         {
            this.mLinkageSolver = linkageSolver;
         }
         var transitionIn:Boolean = useTransitionIn;
         var transitionOut:Boolean = false;
         var transitionOutOfPrevious:Boolean = useTransitionOutOfPrevious;
         var actualCount:int = 0;
         var skippedCount:int = 0;
         var priority:int = 0;
         forceOpen = !forceOpen && this.mPopupManager.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(forceOpen);
         for(i = tutorialNames.length - 1; i >= 0; i--)
         {
            tutorialName = tutorialNames[i];
            tutorialClip = this.mLinkageSolver.solve(tutorialName);
            if(tutorialClip)
            {
               if(actualCount != 0)
               {
                  if(useTransitionInForOnlyFirstPopup)
                  {
                     transitionIn = false;
                  }
                  transitionOutOfPrevious = false;
               }
               if(actualCount == tutorialNames.length - 1 - skippedCount)
               {
                  transitionOut = useTransitionOut;
               }
               this.openPopup(tutorialClip,tutorialName,firstRuns[i],priority,transitionIn,transitionOut,transitionOutOfPrevious,forceOpen);
               actualCount++;
            }
            else
            {
               skippedCount++;
            }
         }
      }
      
      public function closeCurrentTutorial(useTransitionOnClose:Boolean = true) : void
      {
         this.mPopupManager.closePopup(this.mLayerIndex,useTransitionOnClose,true,false);
      }
   }
}
