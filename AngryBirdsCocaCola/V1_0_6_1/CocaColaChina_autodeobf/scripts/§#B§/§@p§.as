package §#B§
{
   import § y§.b2World;
   import §,-§.§#o§;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   
   public class §@p§ extends § ]§
   {
       
      
      public function §@p§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§#8§.mTryToBlink > 0)
         {
            if(§#8§.mTryToBlink >= §-!I§.§;!A§)
            {
               _loc2_ = true;
               §#8§.mTryToBlink = §-!I§.§;!A§ - 1;
            }
            §#8§.mTryToBlink -= param1;
            if(§#8§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§#8§.mIsBlinking)
         {
            §#8§.mTryToBlink = 0;
            §#8§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§#8§.mTryToScream > 0)
         {
            if(§#8§.mTryToScream >= §-!I§.§49§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §#8§.mTryToScream = §-!I§.§49§ - 1;
            }
            §#8§.mTryToScream -= param1;
            if(§#8§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§#8§.mIsScreaming)
         {
            §#8§.mTryToScream = 0;
            §#8§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §;!J§(§#o§.§^P§);
      }
   }
}
