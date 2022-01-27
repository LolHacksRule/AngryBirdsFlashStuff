package §+!#§
{
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §4!e§.§ !0§;
   import §=!E§.Sprite;
   
   public class §>!-§ extends §9!5§
   {
       
      
      public function §>!-§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!E§.mTryToBlink > 0)
         {
            if(§8!E§.mTryToBlink >= §@!!§.§-h§)
            {
               _loc2_ = true;
               §8!E§.mTryToBlink = §@!!§.§-h§ - 1;
            }
            §8!E§.mTryToBlink -= param1;
            if(§8!E§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!E§.mIsBlinking)
         {
            §8!E§.mTryToBlink = 0;
            §8!E§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!E§.mTryToScream > 0)
         {
            if(§8!E§.mTryToScream >= §@!!§.§#1§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §8!E§.mTryToScream = §@!!§.§#1§ - 1;
            }
            §8!E§.mTryToScream -= param1;
            if(§8!E§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!E§.mIsScreaming)
         {
            §8!E§.mTryToScream = 0;
            §8!E§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §^!Y§(§ !0§.§#!1§);
      }
   }
}
