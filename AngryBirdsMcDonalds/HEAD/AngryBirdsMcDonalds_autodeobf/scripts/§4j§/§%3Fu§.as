package §4j§
{
   import § !J§.§%M§;
   import §8T§.b2World;
   import §9!§.§9'§;
   import §`!n§.Sprite;
   
   public class §?u§ extends §9M§
   {
       
      
      public function §?u§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%!$§.mTryToBlink > 0)
         {
            if(§%!$§.mTryToBlink >= §?!c§.§=$§)
            {
               _loc2_ = true;
               §%!$§.mTryToBlink = §?!c§.§=$§ - 1;
            }
            §%!$§.mTryToBlink -= param1;
            if(§%!$§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%!$§.mIsBlinking)
         {
            §%!$§.mTryToBlink = 0;
            §%!$§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%!$§.mTryToScream > 0)
         {
            if(§%!$§.mTryToScream >= §?!c§.§%R§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §%!$§.mTryToScream = §?!c§.§%R§ - 1;
            }
            §%!$§.mTryToScream -= param1;
            if(§%!$§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%!$§.mIsScreaming)
         {
            §%!$§.mTryToScream = 0;
            §%!$§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@!!§(§9'§.§4w§);
      }
   }
}
