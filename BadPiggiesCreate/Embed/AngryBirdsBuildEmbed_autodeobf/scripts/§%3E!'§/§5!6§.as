package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §?!6§.§@T§;
   
   public class §5!6§ extends §<!3§
   {
       
      
      public function §5!6§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§0!E§.mTryToBlink > 0)
         {
            if(§0!E§.mTryToBlink >= §6!N§.§>!7§)
            {
               _loc2_ = true;
               §0!E§.mTryToBlink = §6!N§.§>!7§ - 1;
            }
            §0!E§.mTryToBlink -= param1;
            if(§0!E§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§0!E§.mIsBlinking)
         {
            §0!E§.mTryToBlink = 0;
            §0!E§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§0!E§.mTryToScream > 0)
         {
            if(§0!E§.mTryToScream >= §6!N§.§0+§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §0!E§.mTryToScream = §6!N§.§0+§ - 1;
            }
            §0!E§.mTryToScream -= param1;
            if(§0!E§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§0!E§.mIsScreaming)
         {
            §0!E§.mTryToScream = 0;
            §0!E§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §97§(§@T§.§ if§);
      }
   }
}
