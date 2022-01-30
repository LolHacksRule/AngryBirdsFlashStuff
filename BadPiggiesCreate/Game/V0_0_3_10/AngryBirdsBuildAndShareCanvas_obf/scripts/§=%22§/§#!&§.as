package §="§
{
   import §&!s§.§!m§;
   import §4!s§.§%I§;
   import §^I§.Sprite;
   import §`]§.b2World;
   
   public class §#!&§ extends §`T§
   {
       
      
      public function §#!&§(param1:§="-§, param2:Sprite, param3:b2World, param4:§%I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!w§.mTryToBlink > 0)
         {
            if(§7!w§.mTryToBlink >= §<!e§.§[",§)
            {
               _loc2_ = true;
               §7!w§.mTryToBlink = §<!e§.§[",§ - 1;
            }
            §7!w§.mTryToBlink -= param1;
            if(§7!w§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!w§.mIsBlinking)
         {
            §7!w§.mTryToBlink = 0;
            §7!w§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!w§.mTryToScream > 0)
         {
            if(§7!w§.mTryToScream >= §<!e§.§@!v§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §7!w§.mTryToScream = §<!e§.§@!v§ - 1;
            }
            §7!w§.mTryToScream -= param1;
            if(§7!w§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!w§.mIsScreaming)
         {
            §7!w§.mTryToScream = 0;
            §7!w§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §0!B§(§!m§.§^_§);
      }
   }
}
