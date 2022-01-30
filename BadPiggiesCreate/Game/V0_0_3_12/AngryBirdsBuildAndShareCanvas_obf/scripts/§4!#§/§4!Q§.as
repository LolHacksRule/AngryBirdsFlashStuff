package §4!#§
{
   import §#?§.§?![§;
   import §&!M§.b2World;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class §4!Q§ extends §60§
   {
       
      
      public function §4!Q§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!5§.mTryToBlink > 0)
         {
            if(§8!5§.mTryToBlink >= §#0§.§'"§)
            {
               _loc2_ = true;
               §8!5§.mTryToBlink = §#0§.§'"§ - 1;
            }
            §8!5§.mTryToBlink -= param1;
            if(§8!5§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!5§.mIsBlinking)
         {
            §8!5§.mTryToBlink = 0;
            §8!5§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8!5§.mTryToScream > 0)
         {
            if(§8!5§.mTryToScream >= §#0§.§#!i§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §8!5§.mTryToScream = §#0§.§#!i§ - 1;
            }
            §8!5§.mTryToScream -= param1;
            if(§8!5§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8!5§.mIsScreaming)
         {
            §8!5§.mTryToScream = 0;
            §8!5§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §6B§(§?![§.§4!j§);
      }
   }
}
