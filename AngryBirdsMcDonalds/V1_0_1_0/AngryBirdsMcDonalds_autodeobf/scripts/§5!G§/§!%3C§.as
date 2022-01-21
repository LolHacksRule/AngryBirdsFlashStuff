package §5!G§
{
   import §!!e§.§]!S§;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §@!b§.§@!k§;
   
   public class §!<§ extends §6!Y§
   {
       
      
      public function §!<§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!J§.mTryToBlink > 0)
         {
            if(§8!J§.mTryToBlink >= §]^§.§?!`§)
            {
               _loc2_ = true;
               §8!J§.mTryToBlink = §]^§.§?!`§ - 1;
            }
            §8!J§.mTryToBlink -= param1;
            if(§8!J§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!J§.mIsBlinking)
         {
            §8!J§.mTryToBlink = 0;
            §8!J§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!J§.mTryToScream > 0)
         {
            if(§8!J§.mTryToScream >= §]^§.§@X§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §8!J§.mTryToScream = §]^§.§@X§ - 1;
            }
            §8!J§.mTryToScream -= param1;
            if(§8!J§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!J§.mIsScreaming)
         {
            §8!J§.mTryToScream = 0;
            §8!J§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §"z§(§]!S§.§+§);
      }
   }
}
