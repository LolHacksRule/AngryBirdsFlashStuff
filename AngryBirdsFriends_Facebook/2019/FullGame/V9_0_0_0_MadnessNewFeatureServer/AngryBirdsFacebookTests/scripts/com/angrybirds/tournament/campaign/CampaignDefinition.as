package com.angrybirds.tournament.campaign
{
   public class CampaignDefinition
   {
       
      
      private var mID:String;
      
      private var mSprite:String;
      
      private var mURL:String;
      
      private var mPosition:String;
      
      public function CampaignDefinition(id:String, data:Object)
      {
         super();
         this.mID = id;
         this.mSprite = data.sprite;
         this.mURL = data.url;
         this.mPosition = data.position;
      }
      
      public function get id() : String
      {
         return this.mID;
      }
      
      public function get campaignSprite() : String
      {
         return this.mSprite;
      }
      
      public function get campaignURL() : String
      {
         return this.mURL;
      }
      
      public function get campaignPosition() : String
      {
         return this.mPosition;
      }
   }
}
