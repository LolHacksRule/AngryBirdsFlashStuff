package § T§
{
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §5x§.§&o§;
   import §7z§.§]!-§;
   
   public class §%g§ extends §"!2§
   {
       
      
      public function §%g§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§9t§.mTryToBlink > 0)
         {
            if(§9t§.mTryToBlink >= §4$§.§-!6§)
            {
               _loc2_ = true;
               §9t§.mTryToBlink = §4$§.§-!6§ - 1;
            }
            §9t§.mTryToBlink -= param1;
            if(§9t§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§9t§.mIsBlinking)
         {
            §9t§.mTryToBlink = 0;
            §9t§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§9t§.mTryToScream > 0)
         {
            if(§9t§.mTryToScream >= §4$§.§,!;§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §9t§.mTryToScream = §4$§.§,!;§ - 1;
            }
            §9t§.mTryToScream -= param1;
            if(§9t§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§9t§.mIsScreaming)
         {
            §9t§.mTryToScream = 0;
            §9t§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §^[§(§&o§.§>1§);
      }
   }
}
