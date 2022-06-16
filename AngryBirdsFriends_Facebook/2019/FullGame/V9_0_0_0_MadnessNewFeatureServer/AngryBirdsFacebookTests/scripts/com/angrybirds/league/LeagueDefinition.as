package com.angrybirds.league
{
   public class LeagueDefinition
   {
       
      
      private var mId:String;
      
      private var mName:String;
      
      private var mDescription:String;
      
      private var mReward:int;
      
      private var mMinRating:int;
      
      private var mPromotionSound:String;
      
      private var mDemotionSound:String;
      
      private var mPuffSound:String;
      
      private var mGlowSound:String;
      
      public function LeagueDefinition(id:String, name:String, description:String = "", soundAssetPromotion:String = "league_promotion_star", soundAssetDemotion:String = "league_demotion_crackle", soundAssetPuff:String = "league_demotion_puff", soundAssetGlowSound:String = "league_promotion_glow")
      {
         super();
         this.mId = id;
         this.mName = name;
         this.mDescription = description;
         this.mPromotionSound = soundAssetPromotion;
         this.mDemotionSound = soundAssetDemotion;
         this.mPuffSound = soundAssetPuff;
         this.mGlowSound = soundAssetGlowSound;
      }
      
      public function get reward() : int
      {
         return this.mReward;
      }
      
      public function set reward(value:int) : void
      {
         this.mReward = value;
      }
      
      public function get minRating() : int
      {
         return this.mMinRating;
      }
      
      public function set minRating(value:int) : void
      {
         this.mMinRating = value;
      }
      
      public function get description() : String
      {
         return this.mDescription;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(value:String) : void
      {
         this.mName = value;
      }
      
      public function get id() : String
      {
         return this.mId.toUpperCase();
      }
      
      public function get promotionSound() : String
      {
         return this.mPromotionSound;
      }
      
      public function get demotionSound() : String
      {
         return this.mDemotionSound;
      }
      
      public function get puffSound() : String
      {
         return this.mPuffSound;
      }
      
      public function get glowSound() : String
      {
         return this.mGlowSound;
      }
   }
}
