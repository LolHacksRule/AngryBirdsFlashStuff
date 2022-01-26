package §]!D§
{
   import §%n§.§3!A§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   
   public class §7!$§ extends §@!]§
   {
       
      
      public function §7!$§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`T§.mTryToBlink > 0)
         {
            if(§`T§.mTryToBlink >= §]!R§.§<'§)
            {
               _loc2_ = true;
               §`T§.mTryToBlink = §]!R§.§<'§ - 1;
            }
            §`T§.mTryToBlink -= param1;
            if(§`T§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`T§.mIsBlinking)
         {
            §`T§.mTryToBlink = 0;
            §`T§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`T§.mTryToScream > 0)
         {
            if(§`T§.mTryToScream >= §]!R§.§<_§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §`T§.mTryToScream = §]!R§.§<_§ - 1;
            }
            §`T§.mTryToScream -= param1;
            if(§`T§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`T§.mIsScreaming)
         {
            §`T§.mTryToScream = 0;
            §`T§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §3a§(§3!A§.§0!7§);
      }
   }
}
