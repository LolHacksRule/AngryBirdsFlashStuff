package § !$§
{
   import § A§.§68§;
   import §+d§.b2World;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   
   public class §8r§ extends §>C§
   {
       
      
      public function §8r§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[m§.mTryToBlink > 0)
         {
            if(§[m§.mTryToBlink >= §"!%§.§6!N§)
            {
               _loc2_ = true;
               §[m§.mTryToBlink = §"!%§.§6!N§ - 1;
            }
            §[m§.mTryToBlink -= param1;
            if(§[m§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[m§.mIsBlinking)
         {
            §[m§.mTryToBlink = 0;
            §[m§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[m§.mTryToScream > 0)
         {
            if(§[m§.mTryToScream >= §"!%§.§"!=§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §[m§.mTryToScream = §"!%§.§"!=§ - 1;
            }
            §[m§.mTryToScream -= param1;
            if(§[m§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[m§.mIsScreaming)
         {
            §[m§.mTryToScream = 0;
            §[m§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §^!'§(§68§.§!e§);
      }
   }
}
