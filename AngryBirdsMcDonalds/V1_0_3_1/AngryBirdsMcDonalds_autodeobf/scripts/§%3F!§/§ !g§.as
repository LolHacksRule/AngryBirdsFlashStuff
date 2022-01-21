package §?!§
{
   import §%!n§.§,Y§;
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   
   public class § !g§ extends §%o§
   {
       
      
      public function § !g§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§-s§.mTryToBlink > 0)
         {
            if(§-s§.mTryToBlink >= §0!@§.§<!+§)
            {
               _loc2_ = true;
               §-s§.mTryToBlink = §0!@§.§<!+§ - 1;
            }
            §-s§.mTryToBlink -= param1;
            if(§-s§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§-s§.mIsBlinking)
         {
            §-s§.mTryToBlink = 0;
            §-s§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§-s§.mTryToScream > 0)
         {
            if(§-s§.mTryToScream >= §0!@§.§!s§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §-s§.mTryToScream = §0!@§.§!s§ - 1;
            }
            §-s§.mTryToScream -= param1;
            if(§-s§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§-s§.mIsScreaming)
         {
            §-s§.mTryToScream = 0;
            §-s§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@3§(§,Y§.§1!8§);
      }
   }
}
