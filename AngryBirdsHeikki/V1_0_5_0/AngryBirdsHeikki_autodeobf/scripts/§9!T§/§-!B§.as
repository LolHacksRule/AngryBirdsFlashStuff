package §9!T§
{
   import §+D§.§5!P§;
   import §8!I§.§4A§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §-!B§ extends §;!"§
   {
       
      
      public function §-!B§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§1I§.mTryToBlink > 0)
         {
            if(§1I§.mTryToBlink >= §@1§.§&#§)
            {
               _loc2_ = true;
               §1I§.mTryToBlink = §@1§.§&#§ - 1;
            }
            §1I§.mTryToBlink -= param1;
            if(§1I§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§1I§.mIsBlinking)
         {
            §1I§.mTryToBlink = 0;
            §1I§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§1I§.mTryToScream > 0)
         {
            if(§1I§.mTryToScream >= §@1§.§2!W§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §1I§.mTryToScream = §@1§.§2!W§ - 1;
            }
            §1I§.mTryToScream -= param1;
            if(§1I§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§1I§.mIsScreaming)
         {
            §1I§.mTryToScream = 0;
            §1I§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §1!#§(§4A§.§^M§);
      }
   }
}
