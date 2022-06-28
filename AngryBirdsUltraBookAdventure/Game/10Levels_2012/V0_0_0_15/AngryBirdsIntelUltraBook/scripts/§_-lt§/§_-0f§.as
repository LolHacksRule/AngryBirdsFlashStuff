package §_-lt§
{
   import §_-0DG§.§_-a2§;
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-0f§ extends §_-eZ§
   {
       
      
      public function §_-0f§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-U-§.mTryToBlink > 0)
         {
            if(§_-U-§.mTryToBlink >= §_-05W§.§_-Og§)
            {
               _loc2_ = true;
               §_-U-§.mTryToBlink = §_-05W§.§_-Og§ - 1;
            }
            §_-U-§.mTryToBlink -= param1;
            if(§_-U-§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-U-§.mIsBlinking)
         {
            §_-U-§.mTryToBlink = 0;
            §_-U-§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-U-§.mTryToScream > 0)
         {
            if(§_-U-§.mTryToScream >= §_-05W§.§_-0C9§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-U-§.mTryToScream = §_-05W§.§_-0C9§ - 1;
            }
            §_-U-§.mTryToScream -= param1;
            if(§_-U-§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-U-§.mIsScreaming)
         {
            §_-U-§.mTryToScream = 0;
            §_-U-§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-Dv§(§_-a2§.§_-Pz§);
      }
   }
}
