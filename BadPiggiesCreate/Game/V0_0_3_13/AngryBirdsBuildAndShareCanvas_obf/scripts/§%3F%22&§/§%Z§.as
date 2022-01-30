package §?"&§
{
   import § ""§.§<9§;
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §`L§.Sprite;
   
   public class §%Z§ extends §"!q§
   {
       
      
      public function §%Z§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§!!8§.mTryToBlink > 0)
         {
            if(§!!8§.mTryToBlink >= §"f§.§,!l§)
            {
               _loc2_ = true;
               §!!8§.mTryToBlink = §"f§.§,!l§ - 1;
            }
            §!!8§.mTryToBlink -= param1;
            if(§!!8§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§!!8§.mIsBlinking)
         {
            §!!8§.mTryToBlink = 0;
            §!!8§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§!!8§.mTryToScream > 0)
         {
            if(§!!8§.mTryToScream >= §"f§.§7X§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §!!8§.mTryToScream = §"f§.§7X§ - 1;
            }
            §!!8§.mTryToScream -= param1;
            if(§!!8§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§!!8§.mIsScreaming)
         {
            §!!8§.mTryToScream = 0;
            §!!8§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@!,§(§<9§.§'7§);
      }
   }
}
