package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-Rm§.§_-i8§;
   import §_-SE§.Sprite;
   import §_-vk§.b2World;
   
   public class §_-dM§ extends §_-lx§
   {
       
      
      public function §_-dM§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-bV§.mTryToBlink > 0)
         {
            if(§_-bV§.mTryToBlink >= §_-wS§.§_-DA§)
            {
               _loc2_ = true;
               §_-bV§.mTryToBlink = §_-wS§.§_-DA§ - 1;
            }
            §_-bV§.mTryToBlink -= param1;
            if(§_-bV§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-bV§.mIsBlinking)
         {
            §_-bV§.mTryToBlink = 0;
            §_-bV§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-bV§.mTryToScream > 0)
         {
            if(§_-bV§.mTryToScream >= §_-wS§.§_-Ma§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-bV§.mTryToScream = §_-wS§.§_-Ma§ - 1;
            }
            §_-bV§.mTryToScream -= param1;
            if(§_-bV§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-bV§.mIsScreaming)
         {
            §_-bV§.mTryToScream = 0;
            §_-bV§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-9w§(§_-i8§.§_-x1§);
      }
   }
}
