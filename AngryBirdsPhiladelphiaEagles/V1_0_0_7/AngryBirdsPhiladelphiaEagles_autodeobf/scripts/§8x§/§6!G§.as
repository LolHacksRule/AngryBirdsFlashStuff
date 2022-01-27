package §8x§
{
   import §'d§.§>N§;
   import §,!F§.§#§;
   import §4G§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6!G§ extends §8C§
   {
       
      
      public function §6!G§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5!O§.mTryToBlink > 0)
         {
            if(§5!O§.mTryToBlink >= §5^§.§3H§)
            {
               _loc2_ = true;
               §5!O§.mTryToBlink = §5^§.§3H§ - 1;
            }
            §5!O§.mTryToBlink -= param1;
            if(§5!O§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5!O§.mIsBlinking)
         {
            §5!O§.mTryToBlink = 0;
            §5!O§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5!O§.mTryToScream > 0)
         {
            if(§5!O§.mTryToScream >= §5^§.§'v§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §5!O§.mTryToScream = §5^§.§'v§ - 1;
            }
            §5!O§.mTryToScream -= param1;
            if(§5!O§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5!O§.mIsScreaming)
         {
            §5!O§.mTryToScream = 0;
            §5!O§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §[I§(§>N§.§do §);
      }
   }
}
