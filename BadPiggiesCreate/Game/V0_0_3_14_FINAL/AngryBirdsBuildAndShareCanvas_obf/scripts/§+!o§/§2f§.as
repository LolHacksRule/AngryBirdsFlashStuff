package §+!o§
{
   import §+S§.b2World;
   import §,a§.§+"&§;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §2f§ extends §]"5§
   {
       
      
      public function §2f§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[!g§.mTryToBlink > 0)
         {
            if(§[!g§.mTryToBlink >= §<Y§.§?!§)
            {
               _loc2_ = true;
               §[!g§.mTryToBlink = §<Y§.§?!§ - 1;
            }
            §[!g§.mTryToBlink -= param1;
            if(§[!g§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[!g§.mIsBlinking)
         {
            §[!g§.mTryToBlink = 0;
            §[!g§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§[!g§.mTryToScream > 0)
         {
            if(§[!g§.mTryToScream >= §<Y§.§^!7§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §[!g§.mTryToScream = §<Y§.§^!7§ - 1;
            }
            §[!g§.mTryToScream -= param1;
            if(§[!g§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§[!g§.mIsScreaming)
         {
            §[!g§.mTryToScream = 0;
            §[!g§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §"!a§(§+"&§.§#!^§);
      }
   }
}
