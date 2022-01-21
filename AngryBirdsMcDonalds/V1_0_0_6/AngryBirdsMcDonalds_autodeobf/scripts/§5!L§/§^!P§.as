package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   import §?!'§.§3!^§;
   
   public class §^!P§ extends §,!&§
   {
       
      
      public function §^!P§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<i§.mTryToBlink > 0)
         {
            if(§<i§.mTryToBlink >= §+!+§.§6!;§)
            {
               _loc2_ = true;
               §<i§.mTryToBlink = §+!+§.§6!;§ - 1;
            }
            §<i§.mTryToBlink -= param1;
            if(§<i§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<i§.mIsBlinking)
         {
            §<i§.mTryToBlink = 0;
            §<i§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<i§.mTryToScream > 0)
         {
            if(§<i§.mTryToScream >= §+!+§.§'!0§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §<i§.mTryToScream = §+!+§.§'!0§ - 1;
            }
            §<i§.mTryToScream -= param1;
            if(§<i§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<i§.mIsScreaming)
         {
            §<i§.mTryToScream = 0;
            §<i§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §=W§(§3!^§.§;N§);
      }
   }
}
