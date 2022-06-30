package §`!X§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §^!7§.§^A§;
   import §`Y§.§3!M§;
   
   public class §-E§ extends §5&§
   {
       
      
      public function §-E§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§?W§.mTryToBlink > 0)
         {
            if(§?W§.mTryToBlink >= §>r§.§&R§)
            {
               _loc2_ = true;
               §?W§.mTryToBlink = §>r§.§&R§ - 1;
            }
            §?W§.mTryToBlink -= param1;
            if(§?W§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§?W§.mIsBlinking)
         {
            §?W§.mTryToBlink = 0;
            §?W§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§?W§.mTryToScream > 0)
         {
            if(§?W§.mTryToScream >= §>r§.§&!E§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §?W§.mTryToScream = §>r§.§&!E§ - 1;
            }
            §?W§.mTryToScream -= param1;
            if(§?W§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§?W§.mIsScreaming)
         {
            §?W§.mTryToScream = 0;
            §?W§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §`u§(§3!M§.§#!$§);
      }
   }
}
