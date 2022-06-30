package §"W§
{
   import § d§.§'!"§;
   import §#!f§.Sprite;
   import §^!Z§.b2World;
   import §^-§.§'!!§;
   
   public class §&!K§ extends §;N§
   {
       
      
      public function §&!K§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%f§.mTryToBlink > 0)
         {
            if(§%f§.mTryToBlink >= §0f§.§]!e§)
            {
               _loc2_ = true;
               §%f§.mTryToBlink = §0f§.§]!e§ - 1;
            }
            §%f§.mTryToBlink -= param1;
            if(§%f§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%f§.mIsBlinking)
         {
            §%f§.mTryToBlink = 0;
            §%f§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§%f§.mTryToScream > 0)
         {
            if(§%f§.mTryToScream >= §0f§.§![§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §%f§.mTryToScream = §0f§.§![§ - 1;
            }
            §%f§.mTryToScream -= param1;
            if(§%f§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§%f§.mIsScreaming)
         {
            §%f§.mTryToScream = 0;
            §%f§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,!^§(§'!!§.§7!-§);
      }
   }
}
