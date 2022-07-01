package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §]";§.§34§;
   
   public class §!>§ extends §``§
   {
       
      
      public function §!>§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8C§.mTryToBlink > 0)
         {
            if(§8C§.mTryToBlink >= §0;§.§]!7§)
            {
               _loc2_ = true;
               §8C§.mTryToBlink = §0;§.§]!7§ - 1;
            }
            §8C§.mTryToBlink -= param1;
            if(§8C§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8C§.mIsBlinking)
         {
            §8C§.mTryToBlink = 0;
            §8C§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8C§.mTryToScream > 0)
         {
            if(§8C§.mTryToScream >= §0;§.§2!_§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §8C§.mTryToScream = §0;§.§2!_§ - 1;
            }
            §8C§.mTryToScream -= param1;
            if(§8C§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8C§.mIsScreaming)
         {
            §8C§.mTryToScream = 0;
            §8C§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §^!x§(§34§.§ use§);
      }
   }
}
