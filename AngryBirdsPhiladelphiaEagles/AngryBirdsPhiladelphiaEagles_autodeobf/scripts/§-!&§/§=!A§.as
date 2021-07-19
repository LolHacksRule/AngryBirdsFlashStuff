package §-!&§
{
   import § N§.Sprite;
   import §2G§.§0Z§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=!A§ extends §3!,§
   {
       
      
      public function §=!A§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§3! §.mTryToBlink > 0)
         {
            if(§3! §.mTryToBlink >= §?k§.§[R§)
            {
               _loc2_ = true;
               §3! §.mTryToBlink = §?k§.§[R§ - 1;
            }
            §3! §.mTryToBlink -= param1;
            if(§3! §.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§3! §.mIsBlinking)
         {
            §3! §.mTryToBlink = 0;
            §3! §.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§3! §.mTryToScream > 0)
         {
            if(§3! §.mTryToScream >= §?k§.§1J§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §3! §.mTryToScream = §?k§.§1J§ - 1;
            }
            §3! §.mTryToScream -= param1;
            if(§3! §.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§3! §.mIsScreaming)
         {
            §3! §.mTryToScream = 0;
            §3! §.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,A§(§0Z§.§-R§);
      }
   }
}
