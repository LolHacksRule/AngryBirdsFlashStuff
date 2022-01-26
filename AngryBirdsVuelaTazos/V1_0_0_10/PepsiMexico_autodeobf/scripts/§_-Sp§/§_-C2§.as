package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-hR§.§_-c§;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   
   public class §_-C2§ extends §_-JP§
   {
       
      
      public function §_-C2§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-LF§.mTryToBlink > 0)
         {
            if(§_-LF§.mTryToBlink >= §_-Lk§.§_-R6§)
            {
               _loc2_ = true;
               §_-LF§.mTryToBlink = §_-Lk§.§_-R6§ - 1;
            }
            §_-LF§.mTryToBlink -= param1;
            if(§_-LF§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-LF§.mIsBlinking)
         {
            §_-LF§.mTryToBlink = 0;
            §_-LF§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-LF§.mTryToScream > 0)
         {
            if(§_-LF§.mTryToScream >= §_-Lk§.§_-1w§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-LF§.mTryToScream = §_-Lk§.§_-1w§ - 1;
            }
            §_-LF§.mTryToScream -= param1;
            if(§_-LF§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-LF§.mIsScreaming)
         {
            §_-LF§.mTryToScream = 0;
            §_-LF§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-m-§(§_-c§.§_-SH§);
      }
   }
}
