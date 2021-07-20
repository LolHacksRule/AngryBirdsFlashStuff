package §&!8§
{
   import § o§.b2World;
   import §!r§.§"B§;
   import §,§.§ p§;
   import §^a§.Sprite;
   
   public class §-!K§ extends §[g§
   {
       
      
      public function §-!K§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5d§.mTryToBlink > 0)
         {
            if(§5d§.mTryToBlink >= §%$§.§7I§)
            {
               _loc2_ = true;
               §5d§.mTryToBlink = §%$§.§7I§ - 1;
            }
            §5d§.mTryToBlink -= param1;
            if(§5d§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5d§.mIsBlinking)
         {
            §5d§.mTryToBlink = 0;
            §5d§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5d§.mTryToScream > 0)
         {
            if(§5d§.mTryToScream >= §%$§.§&!D§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §5d§.mTryToScream = §%$§.§&!D§ - 1;
            }
            §5d§.mTryToScream -= param1;
            if(§5d§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5d§.mIsScreaming)
         {
            §5d§.mTryToScream = 0;
            §5d§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §0!5§(§"B§.§5!O§);
      }
   }
}
