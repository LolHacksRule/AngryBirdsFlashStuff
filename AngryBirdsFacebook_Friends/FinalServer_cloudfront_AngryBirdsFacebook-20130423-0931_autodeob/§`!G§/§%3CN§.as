package §`!G§
{
   import §'!6§.Sprite;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §<N§ extends §[!8§
   {
       
      
      public function §<N§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!8§.mTryToBlink > 0)
         {
            if(§2!8§.mTryToBlink >= §+T§.§4!V§)
            {
               _loc2_ = true;
               §2!8§.mTryToBlink = §+T§.§4!V§ - 1;
            }
            §2!8§.mTryToBlink -= param1;
            if(§2!8§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!8§.mIsBlinking)
         {
            §2!8§.mTryToBlink = 0;
            §2!8§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!8§.mTryToScream > 0)
         {
            if(§2!8§.mTryToScream >= §+T§.§<!t§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2!8§.mTryToScream = §+T§.§<!t§ - 1;
            }
            §2!8§.mTryToScream -= param1;
            if(§2!8§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!8§.mIsScreaming)
         {
            §2!8§.mTryToScream = 0;
            §2!8§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §8X§(§[!J§.§]"3§);
      }
   }
}
