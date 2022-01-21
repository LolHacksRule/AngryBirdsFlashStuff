package §%`§
{
   import §'a§.§0!f§;
   import §3!g§.b2World;
   import §4s§.§[-§;
   import §5x§.Sprite;
   
   public class §9c§ extends §"s§
   {
       
      
      public function §9c§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2R§.mTryToBlink > 0)
         {
            if(§2R§.mTryToBlink >= §;!"§.§&!K§)
            {
               _loc2_ = true;
               §2R§.mTryToBlink = §;!"§.§&!K§ - 1;
            }
            §2R§.mTryToBlink -= param1;
            if(§2R§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2R§.mIsBlinking)
         {
            §2R§.mTryToBlink = 0;
            §2R§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2R§.mTryToScream > 0)
         {
            if(§2R§.mTryToScream >= §;!"§.§]l§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2R§.mTryToScream = §;!"§.§]l§ - 1;
            }
            §2R§.mTryToScream -= param1;
            if(§2R§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2R§.mIsScreaming)
         {
            §2R§.mTryToScream = 0;
            §2R§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §"!Z§(§[-§.§8!T§);
      }
   }
}
