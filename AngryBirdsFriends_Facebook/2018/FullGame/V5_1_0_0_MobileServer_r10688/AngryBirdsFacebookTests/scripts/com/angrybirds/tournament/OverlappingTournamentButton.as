package com.angrybirds.tournament
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class OverlappingTournamentButton
   {
      
      public static const STATE_COMING_SOON:int = 0;
      
      public static const STATE_JOIN:int = 1;
      
      public static const STATE_PLAY:int = 2;
      
      public static const STATE_COMPLETED:int = 3;
      
      private static const BRANDED_DECO_PREFIX:String = "DECO_";
      
      private static const BRANDED_CURRENT_IMAGE_PREFIX:String = "CURRENT_";
       
      
      private var mState:int;
      
      private var mTournamentButton:UIComponentRovio;
      
      private var mTournamentModel:TournamentModel;
      
      public function OverlappingTournamentButton(tournamentButton:UIComponentRovio, state:int)
      {
         super();
         this.mTournamentButton = tournamentButton;
         this.mTournamentModel = TournamentModel.instance;
         var weekDayLabels:Array = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
         var date:Date = new Date();
         (this.mTournamentButton.mClip.getChildByName("StartDayText") as TextField).text = weekDayLabels[date.getDay()];
         this.setState(state);
         this.initBrandedGraphics();
      }
      
      public function setState(state:int) : void
      {
         this.mState = state;
         switch(this.mState)
         {
            case STATE_COMING_SOON:
               break;
            case STATE_JOIN:
               this.mTournamentButton.mClip.getChildByName("Bottom_Play").visible = false;
               this.mTournamentButton.mClip.getChildByName("Bottom_Join").visible = true;
               this.mTournamentButton.mClip.getChildByName("ExtraGift").visible = true;
               break;
            case STATE_PLAY:
               this.mTournamentButton.mClip.getChildByName("Bottom_Play").visible = true;
               this.mTournamentButton.mClip.getChildByName("Bottom_Join").visible = false;
               this.mTournamentButton.mClip.getChildByName("ExtraGift").visible = false;
         }
      }
      
      public function update(deltaTime:Number) : void
      {
         switch(this.mState)
         {
            case STATE_COMING_SOON:
               break;
            case STATE_JOIN:
            case STATE_PLAY:
               this.updateTimeLeft();
         }
      }
      
      protected function updateTimeLeft() : void
      {
         var timeLeftPretty:Array = this.mTournamentModel.getTournamentTimeLeftAsPrettyString();
         (this.mTournamentButton.mClip.getChildByName("DaysLeft") as TextField).text = timeLeftPretty[0];
         timeLeftPretty = null;
      }
      
      private function initBrandedGraphics() : void
      {
         var brandedVersion:MovieClip = null;
         var tempMovieClip:MovieClip = this.mTournamentButton.mClip.getChildByName("Deco") as MovieClip;
         tempMovieClip.removeChildren();
         var cls:Class = AssetCache.getAssetFromCache(BRANDED_DECO_PREFIX + this.mTournamentModel.tournamentRules.brandedFrameLabel,false,false);
         if(cls)
         {
            brandedVersion = new cls();
            tempMovieClip.addChild(brandedVersion);
         }
         tempMovieClip = this.mTournamentButton.mClip.getChildByName("Current_Image") as MovieClip;
         cls = AssetCache.getAssetFromCache(BRANDED_CURRENT_IMAGE_PREFIX + this.mTournamentModel.tournamentRules.brandedFrameLabel,false,false);
         if(cls)
         {
            tempMovieClip.removeChildren();
            brandedVersion = new cls();
            tempMovieClip.addChild(brandedVersion);
         }
      }
   }
}
