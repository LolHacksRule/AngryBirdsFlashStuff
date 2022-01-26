package §_-CR§
{
   import §_-HU§.§_-6n§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-kw§ extends §_-Dz§
   {
       
      
      public function §_-kw§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-e7§.mTryToBlink > 0)
         {
            if(§_-e7§.mTryToBlink >= §_-l9§.§_-L5§)
            {
               _loc2_ = true;
               §_-e7§.mTryToBlink = §_-l9§.§_-L5§ - 1;
            }
            §_-e7§.mTryToBlink -= param1;
            if(§_-e7§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-e7§.mIsBlinking)
         {
            §_-e7§.mTryToBlink = 0;
            §_-e7§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-e7§.mTryToScream > 0)
         {
            if(§_-e7§.mTryToScream >= §_-l9§.§_-ey§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-e7§.mTryToScream = §_-l9§.§_-ey§ - 1;
            }
            §_-e7§.mTryToScream -= param1;
            if(§_-e7§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-e7§.mIsScreaming)
         {
            §_-e7§.mTryToScream = 0;
            §_-e7§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-h7§(§_-6n§.§_-6l§);
      }
   }
}
