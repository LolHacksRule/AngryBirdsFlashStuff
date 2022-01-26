package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   import §with§.§_-AZ§;
   
   public class §_-Oy§ extends §_-sW§
   {
       
      
      public function §_-Oy§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-UF§.mTryToBlink > 0)
         {
            if(§_-UF§.mTryToBlink >= §_-1c§.§_-7d§)
            {
               _loc2_ = true;
               §_-UF§.mTryToBlink = §_-1c§.§_-7d§ - 1;
            }
            §_-UF§.mTryToBlink -= param1;
            if(§_-UF§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-UF§.mIsBlinking)
         {
            §_-UF§.mTryToBlink = 0;
            §_-UF§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-UF§.mTryToScream > 0)
         {
            if(§_-UF§.mTryToScream >= §_-1c§.§_-sO§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-UF§.mTryToScream = §_-1c§.§_-sO§ - 1;
            }
            §_-UF§.mTryToScream -= param1;
            if(§_-UF§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-UF§.mIsScreaming)
         {
            §_-UF§.mTryToScream = 0;
            §_-UF§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-yC§(§_-AZ§.§_-dL§);
      }
   }
}
