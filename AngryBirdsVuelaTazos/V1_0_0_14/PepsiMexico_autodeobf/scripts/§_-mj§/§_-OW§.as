package §_-mj§
{
   import §_-5Y§.§_-yw§;
   import §_-WH§.§_-YE§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-OW§ extends §_-GI§
   {
       
      
      public function §_-OW§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-M4§.mTryToBlink > 0)
         {
            if(§_-M4§.mTryToBlink >= §_-KA§.§_-NA§)
            {
               _loc2_ = true;
               §_-M4§.mTryToBlink = §_-KA§.§_-NA§ - 1;
            }
            §_-M4§.mTryToBlink -= param1;
            if(§_-M4§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-M4§.mIsBlinking)
         {
            §_-M4§.mTryToBlink = 0;
            §_-M4§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-M4§.mTryToScream > 0)
         {
            if(§_-M4§.mTryToScream >= §_-KA§.§_-6K§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-M4§.mTryToScream = §_-KA§.§_-6K§ - 1;
            }
            §_-M4§.mTryToScream -= param1;
            if(§_-M4§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-M4§.mIsScreaming)
         {
            §_-M4§.mTryToScream = 0;
            §_-M4§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-kY§(§_-YE§.§_-WP§);
      }
   }
}
