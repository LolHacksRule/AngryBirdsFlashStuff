package §;z§
{
   import §"P§.§%w§;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §4!&§.b2World;
   
   public class §2!S§ extends §!+§
   {
       
      
      public function §2!S§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§=t§.mTryToBlink > 0)
         {
            if(§=t§.mTryToBlink >= §0!Q§.§"w§)
            {
               _loc2_ = true;
               §=t§.mTryToBlink = §0!Q§.§"w§ - 1;
            }
            §=t§.mTryToBlink -= param1;
            if(§=t§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§=t§.mIsBlinking)
         {
            §=t§.mTryToBlink = 0;
            §=t§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§=t§.mTryToScream > 0)
         {
            if(§=t§.mTryToScream >= §0!Q§.§%!?§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §=t§.mTryToScream = §0!Q§.§%!?§ - 1;
            }
            §=t§.mTryToScream -= param1;
            if(§=t§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§=t§.mIsScreaming)
         {
            §=t§.mTryToScream = 0;
            §=t§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §6!H§(§%w§.§`!O§);
      }
   }
}
