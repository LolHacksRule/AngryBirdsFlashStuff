package §'_§
{
   import § !k§.b2World;
   import §3,§.§[!;§;
   import §<%§.§9q§;
   import §]&§.Sprite;
   
   public class §@1§ extends §9V§
   {
       
      
      public function §@1§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§@!'§.mTryToBlink > 0)
         {
            if(§@!'§.mTryToBlink >= §5!;§.§<p§)
            {
               _loc2_ = true;
               §@!'§.mTryToBlink = §5!;§.§<p§ - 1;
            }
            §@!'§.mTryToBlink -= param1;
            if(§@!'§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§@!'§.mIsBlinking)
         {
            §@!'§.mTryToBlink = 0;
            §@!'§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§@!'§.mTryToScream > 0)
         {
            if(§@!'§.mTryToScream >= §5!;§.§9!8§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §@!'§.mTryToScream = §5!;§.§9!8§ - 1;
            }
            §@!'§.mTryToScream -= param1;
            if(§@!'§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§@!'§.mIsScreaming)
         {
            §@!'§.mTryToScream = 0;
            §@!'§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §-H§(§9q§.§7@§);
      }
   }
}
