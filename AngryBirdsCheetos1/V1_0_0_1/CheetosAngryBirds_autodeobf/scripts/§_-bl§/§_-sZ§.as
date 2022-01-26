package §_-bl§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-p5§.§_-ZO§;
   import §try§.b2World;
   
   public class §_-sZ§ extends §_-Ie§
   {
       
      
      public function §_-sZ§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-KI§.mTryToBlink > 0)
         {
            if(§_-KI§.mTryToBlink >= §_-Td§.§_-Na§)
            {
               _loc2_ = true;
               §_-KI§.mTryToBlink = §_-Td§.§_-Na§ - 1;
            }
            §_-KI§.mTryToBlink -= param1;
            if(§_-KI§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-KI§.mIsBlinking)
         {
            §_-KI§.mTryToBlink = 0;
            §_-KI§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-KI§.mTryToScream > 0)
         {
            if(§_-KI§.mTryToScream >= §_-Td§.§_-2u§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-KI§.mTryToScream = §_-Td§.§_-2u§ - 1;
            }
            §_-KI§.mTryToScream -= param1;
            if(§_-KI§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-KI§.mIsScreaming)
         {
            §_-KI§.mTryToScream = 0;
            §_-KI§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-M6§(§_-ZO§.§_-5s§);
      }
   }
}
