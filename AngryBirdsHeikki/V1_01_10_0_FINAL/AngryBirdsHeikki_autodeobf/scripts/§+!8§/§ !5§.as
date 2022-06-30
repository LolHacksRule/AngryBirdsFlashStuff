package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §@0§.§!k§;
   
   public class § !5§ extends §,_§
   {
       
      
      public function § !5§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[r§.mTryToBlink > 0)
         {
            if(§[r§.mTryToBlink >= §&!_§.§`I§)
            {
               _loc2_ = true;
               §[r§.mTryToBlink = §&!_§.§`I§ - 1;
            }
            §[r§.mTryToBlink -= param1;
            if(§[r§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[r§.mIsBlinking)
         {
            §[r§.mTryToBlink = 0;
            §[r§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[r§.mTryToScream > 0)
         {
            if(§[r§.mTryToScream >= §&!_§.§6!c§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §[r§.mTryToScream = §&!_§.§6!c§ - 1;
            }
            §[r§.mTryToScream -= param1;
            if(§[r§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[r§.mIsScreaming)
         {
            §[r§.mTryToScream = 0;
            §[r§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §^!H§(§!k§.§!X§);
      }
   }
}
