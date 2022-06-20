package com.angrybirds.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   
   public class TournamentRules
   {
       
      
      private var mReplaceStates:Vector.<ReplaceStatePair>;
      
      private var mTournamentName:String;
      
      private var mTournamentPrettyName:String;
      
      private var mFirstTimePopup:Class;
      
      private var mTutorials:String = "";
      
      private var mShopPopup:Class;
      
      private var mTournamentResultsPopup:Class;
      
      private var mPowerupFrenzy:Boolean;
      
      private var mChapterSelectionBackgroundFrameLabel:String;
      
      private var mChapterSelectionButtonFrameLabel:String;
      
      private var mBackground:String;
      
      private var mFreeBundleId:String;
      
      private var mFreeBundlePopup:Class;
      
      private var mShouldTease:Boolean = false;
      
      private var mChapterSelectionGraphics:Array;
      
      private var mBrandedFrameLabel:String;
      
      public var hasCustomBackground:Boolean = true;
      
      public var mCustomBlock:String;
      
      public function TournamentRules(name:String, firstTimePopup:Class, chapterSelectionBackgroundFrameLabel:String, chapterSelectionButtonFrameLabel:String, powerupFrenzy:Boolean, background:String = "")
      {
         super();
         this.mTournamentName = name;
         this.mFirstTimePopup = firstTimePopup;
         this.mChapterSelectionBackgroundFrameLabel = chapterSelectionBackgroundFrameLabel;
         this.mChapterSelectionButtonFrameLabel = chapterSelectionButtonFrameLabel;
         this.mPowerupFrenzy = powerupFrenzy;
         this.mBackground = background;
      }
      
      public function get firstTimePopup() : Class
      {
         return this.mFirstTimePopup;
      }
      
      public function get shopPopup() : Class
      {
         return this.mShopPopup;
      }
      
      public function set shopPopup(value:Class) : void
      {
         this.mShopPopup = value;
      }
      
      public function get tournamentResults() : Class
      {
         return this.mTournamentResultsPopup;
      }
      
      public function set tournamentResults(value:Class) : void
      {
         this.mTournamentResultsPopup = value;
      }
      
      public function get tutorials() : String
      {
         return this.mTutorials;
      }
      
      public function set tutorials(value:String) : void
      {
         this.mTutorials = value;
      }
      
      public function get freeBundlePopup() : Class
      {
         return this.mFreeBundlePopup;
      }
      
      public function set freeBundlePopup(value:Class) : void
      {
         this.mFreeBundlePopup = value;
      }
      
      public function get freeBundleId() : String
      {
         return this.mFreeBundleId;
      }
      
      public function set freeBundleId(value:String) : void
      {
         this.mFreeBundleId = value;
      }
      
      public function get shouldTease() : Boolean
      {
         return this.mShouldTease;
      }
      
      public function set shouldTease(value:Boolean) : void
      {
         this.mShouldTease = value;
      }
      
      public function get chapterSelectionGraphics() : Array
      {
         return this.mChapterSelectionGraphics;
      }
      
      public function set chapterSelectionGraphics(value:Array) : void
      {
         this.mChapterSelectionGraphics = value;
      }
      
      public function get background() : String
      {
         return this.mBackground;
      }
      
      public function set background(value:String) : void
      {
         this.mBackground = value;
      }
      
      public function get customBlockName() : String
      {
         return this.mCustomBlock;
      }
      
      public function get brandedFrameLabel() : String
      {
         return this.mBrandedFrameLabel;
      }
      
      public function set brandedFrameLabel(value:String) : void
      {
         this.mBrandedFrameLabel = value;
      }
      
      public function get tournamentName() : String
      {
         return this.mTournamentName;
      }
      
      public function set tournamentName(value:String) : void
      {
         this.mTournamentName = value;
      }
      
      public function get tournamentPrettyName() : String
      {
         return this.mTournamentPrettyName;
      }
      
      public function set tournamentPrettyName(value:String) : void
      {
         this.mTournamentPrettyName = value;
      }
      
      public function get chapterSelectionBackgroundFrameLabel() : String
      {
         return this.mChapterSelectionBackgroundFrameLabel;
      }
      
      public function addStatePair(stateName:String, replacementClass:Class) : void
      {
         if(!this.mReplaceStates)
         {
            this.mReplaceStates = new Vector.<ReplaceStatePair>();
         }
         this.mReplaceStates[this.mReplaceStates.length] = new ReplaceStatePair(stateName,replacementClass);
      }
      
      public function set chapterSelectionButtonFrameLabel(value:String) : void
      {
         this.mChapterSelectionButtonFrameLabel = value;
      }
      
      public function get chapterSelectionButtonFrameLabel() : String
      {
         return this.mChapterSelectionButtonFrameLabel;
      }
      
      public function replaceStates() : void
      {
         var statePair:ReplaceStatePair = null;
         for each(statePair in this.mReplaceStates)
         {
            AngryBirdsEngine.smApp.replaceStateObject(statePair.stateName,statePair.replaceState);
         }
      }
      
      public function get statePairs() : Vector.<ReplaceStatePair>
      {
         return this.mReplaceStates.concat();
      }
      
      public function cloneStatePairsFrom(pRule:TournamentRules) : void
      {
         var statePair:ReplaceStatePair = null;
         for each(statePair in pRule.statePairs)
         {
            this.addStatePair(statePair.stateName,statePair.replaceState);
         }
      }
   }
}
