package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §?7§.§=!5§;
   import §`a§.Sprite;
   
   public class §!!!§ extends §@m§
   {
       
      
      public function §!!!§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%n§.mTryToBlink > 0)
         {
            if(§%n§.mTryToBlink >= §'x§.§@x§)
            {
               _loc2_ = true;
               §%n§.mTryToBlink = §'x§.§@x§ - 1;
            }
            §%n§.mTryToBlink -= param1;
            if(§%n§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%n§.mIsBlinking)
         {
            §%n§.mTryToBlink = 0;
            §%n§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%n§.mTryToScream > 0)
         {
            if(§%n§.mTryToScream >= §'x§.§ H§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §%n§.mTryToScream = §'x§.§ H§ - 1;
            }
            §%n§.mTryToScream -= param1;
            if(§%n§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%n§.mIsScreaming)
         {
            §%n§.mTryToScream = 0;
            §%n§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,!L§(§=!5§.§2!#§);
      }
   }
}
