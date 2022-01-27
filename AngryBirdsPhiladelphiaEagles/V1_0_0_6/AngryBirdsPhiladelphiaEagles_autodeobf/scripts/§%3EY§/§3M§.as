package §>Y§
{
   import §4!-§.§%o§;
   import §86§.Sprite;
   import §<Z§.§5!G§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §3M§ extends §#o§
   {
       
      
      public function §3M§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%!B§.mTryToBlink > 0)
         {
            if(§%!B§.mTryToBlink >= §^!,§.§1s§)
            {
               _loc2_ = true;
               §%!B§.mTryToBlink = §^!,§.§1s§ - 1;
            }
            §%!B§.mTryToBlink -= param1;
            if(§%!B§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%!B§.mIsBlinking)
         {
            §%!B§.mTryToBlink = 0;
            §%!B§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%!B§.mTryToScream > 0)
         {
            if(§%!B§.mTryToScream >= §^!,§.§'!?§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §%!B§.mTryToScream = §^!,§.§'!?§ - 1;
            }
            §%!B§.mTryToScream -= param1;
            if(§%!B§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%!B§.mIsScreaming)
         {
            §%!B§.mTryToScream = 0;
            §%!B§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §&l§(§5!G§.§7z§);
      }
   }
}
