package §0=§
{
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import §0E§.§7u§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § l§ extends §2p§
   {
       
      
      public function § l§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^c§.mTryToBlink > 0)
         {
            if(§^c§.mTryToBlink >= §?!,§.§5!O§)
            {
               _loc2_ = true;
               §^c§.mTryToBlink = §?!,§.§5!O§ - 1;
            }
            §^c§.mTryToBlink -= param1;
            if(§^c§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^c§.mIsBlinking)
         {
            §^c§.mTryToBlink = 0;
            §^c§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^c§.mTryToScream > 0)
         {
            if(§^c§.mTryToScream >= §?!,§.§=!B§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §^c§.mTryToScream = §?!,§.§=!B§ - 1;
            }
            §^c§.mTryToScream -= param1;
            if(§^c§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^c§.mIsScreaming)
         {
            §^c§.mTryToScream = 0;
            §^c§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §;!"§(§7u§.§%!<§);
      }
   }
}
