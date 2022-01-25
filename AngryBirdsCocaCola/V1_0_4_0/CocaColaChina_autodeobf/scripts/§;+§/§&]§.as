package §;+§
{
   import § !K§.Sprite;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §^p§.§0u§;
   
   public class §&]§ extends §[!3§
   {
       
      
      public function §&]§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§4!%§.mTryToBlink > 0)
         {
            if(§4!%§.mTryToBlink >= §5!P§.§3!M§)
            {
               _loc2_ = true;
               §4!%§.mTryToBlink = §5!P§.§3!M§ - 1;
            }
            §4!%§.mTryToBlink -= param1;
            if(§4!%§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§4!%§.mIsBlinking)
         {
            §4!%§.mTryToBlink = 0;
            §4!%§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§4!%§.mTryToScream > 0)
         {
            if(§4!%§.mTryToScream >= §5!P§.§]5§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §4!%§.mTryToScream = §5!P§.§]5§ - 1;
            }
            §4!%§.mTryToScream -= param1;
            if(§4!%§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§4!%§.mIsScreaming)
         {
            §4!%§.mTryToScream = 0;
            §4!%§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@!@§(§0u§.§]0§);
      }
   }
}
