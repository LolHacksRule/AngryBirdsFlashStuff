package §_-fr§
{
   import §_-43§.b2World;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-TV§.§_-Sk§;
   
   public class §_-2W§ extends §_-FX§
   {
       
      
      public function §_-2W§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-9G§.mTryToBlink > 0)
         {
            if(§_-9G§.mTryToBlink >= §_-e9§.§finally§)
            {
               _loc2_ = true;
               §_-9G§.mTryToBlink = §_-e9§.§finally§ - 1;
            }
            §_-9G§.mTryToBlink -= param1;
            if(§_-9G§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-9G§.mIsBlinking)
         {
            §_-9G§.mTryToBlink = 0;
            §_-9G§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§_-9G§.mTryToScream > 0)
         {
            if(§_-9G§.mTryToScream >= §_-e9§.§_-0-X§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §_-9G§.mTryToScream = §_-e9§.§_-0-X§ - 1;
            }
            §_-9G§.mTryToScream -= param1;
            if(§_-9G§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§_-9G§.mIsScreaming)
         {
            §_-9G§.mTryToScream = 0;
            §_-9G§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §_-HX§(§_-Sk§.§_-BT§);
      }
   }
}
