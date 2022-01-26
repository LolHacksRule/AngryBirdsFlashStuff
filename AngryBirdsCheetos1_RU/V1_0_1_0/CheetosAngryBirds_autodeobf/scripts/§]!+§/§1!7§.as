package §]!+§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §5!$§.§1!8§;
   import §[x§.b2World;
   
   public class §1!7§ extends §";§
   {
       
      
      public function §1!7§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^!3§.mTryToBlink > 0)
         {
            if(§^!3§.mTryToBlink >= §%j§.§]J§)
            {
               _loc2_ = true;
               §^!3§.mTryToBlink = §%j§.§]J§ - 1;
            }
            §^!3§.mTryToBlink -= param1;
            if(§^!3§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^!3§.mIsBlinking)
         {
            §^!3§.mTryToBlink = 0;
            §^!3§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^!3§.mTryToScream > 0)
         {
            if(§^!3§.mTryToScream >= §%j§.§8f§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §^!3§.mTryToScream = §%j§.§8f§ - 1;
            }
            §^!3§.mTryToScream -= param1;
            if(§^!3§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^!3§.mIsScreaming)
         {
            §^!3§.mTryToScream = 0;
            §^!3§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §3![§(§1!8§.§[!L§);
      }
   }
}
