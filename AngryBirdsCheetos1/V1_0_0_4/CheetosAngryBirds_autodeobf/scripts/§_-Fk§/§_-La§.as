package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2World;
   import §_-X4§.§_-aP§;
   import §case §.Sprite;
   
   public class §_-La§ extends §_-Cb§
   {
       
      
      public function §_-La§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-Rh§.mTryToBlink > 0)
         {
            if(§_-Rh§.mTryToBlink >= §_-8E§.§_-Ra§)
            {
               _loc2_ = true;
               §_-Rh§.mTryToBlink = §_-8E§.§_-Ra§ - 1;
            }
            §_-Rh§.mTryToBlink -= param1;
            if(§_-Rh§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-Rh§.mIsBlinking)
         {
            §_-Rh§.mTryToBlink = 0;
            §_-Rh§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-Rh§.mTryToScream > 0)
         {
            if(§_-Rh§.mTryToScream >= §_-8E§.§_-b7§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-Rh§.mTryToScream = §_-8E§.§_-b7§ - 1;
            }
            §_-Rh§.mTryToScream -= param1;
            if(§_-Rh§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-Rh§.mIsScreaming)
         {
            §_-Rh§.mTryToScream = 0;
            §_-Rh§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-0-i§(§_-aP§.§_-zy§);
      }
   }
}
