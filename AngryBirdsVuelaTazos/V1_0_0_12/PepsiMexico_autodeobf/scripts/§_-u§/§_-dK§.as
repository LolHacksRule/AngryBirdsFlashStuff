package §_-u§
{
   import §_-EH§.b2World;
   import §_-H2§.§_-i7§;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   
   public class §_-dK§ extends §_-5Q§
   {
       
      
      public function §_-dK§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§use§.mTryToBlink > 0)
         {
            if(§use§.mTryToBlink >= §_-iL§.§_-Dk§)
            {
               _loc2_ = true;
               §use§.mTryToBlink = §_-iL§.§_-Dk§ - 1;
            }
            §use§.mTryToBlink -= param1;
            if(§use§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§use§.mIsBlinking)
         {
            §use§.mTryToBlink = 0;
            §use§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§use§.mTryToScream > 0)
         {
            if(§use§.mTryToScream >= §_-iL§.§_-3F§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §use§.mTryToScream = §_-iL§.§_-3F§ - 1;
            }
            §use§.mTryToScream -= param1;
            if(§use§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§use§.mIsScreaming)
         {
            §use§.mTryToScream = 0;
            §use§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-5E§(§_-i7§.§_-fL§);
      }
   }
}
