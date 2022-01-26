package §_-ST§
{
   import §_-B7§.§_-TP§;
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-vO§.Sprite;
   
   public class §_-YQ§ extends §_-fK§
   {
       
      
      public function §_-YQ§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-ds§.mTryToBlink > 0)
         {
            if(§_-ds§.mTryToBlink >= §_-T6§.§_-1R§)
            {
               _loc2_ = true;
               §_-ds§.mTryToBlink = §_-T6§.§_-1R§ - 1;
            }
            §_-ds§.mTryToBlink -= param1;
            if(§_-ds§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-ds§.mIsBlinking)
         {
            §_-ds§.mTryToBlink = 0;
            §_-ds§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-ds§.mTryToScream > 0)
         {
            if(§_-ds§.mTryToScream >= §_-T6§.§_-JK§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-ds§.mTryToScream = §_-T6§.§_-JK§ - 1;
            }
            §_-ds§.mTryToScream -= param1;
            if(§_-ds§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-ds§.mIsScreaming)
         {
            §_-ds§.mTryToScream = 0;
            §_-ds§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-j1§(§_-TP§.§_-0c§);
      }
   }
}
