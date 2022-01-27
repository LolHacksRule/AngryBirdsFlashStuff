package § var§
{
   import §#I§.b2World;
   import §0S§.§6!D§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §&Y§ extends §!u§
   {
       
      
      public function §&Y§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§+!j§.mTryToBlink > 0)
         {
            if(§+!j§.mTryToBlink >= §7!r§.§=2§)
            {
               _loc2_ = true;
               §+!j§.mTryToBlink = §7!r§.§=2§ - 1;
            }
            §+!j§.mTryToBlink -= param1;
            if(§+!j§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§+!j§.mIsBlinking)
         {
            §+!j§.mTryToBlink = 0;
            §+!j§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§+!j§.mTryToScream > 0)
         {
            if(§+!j§.mTryToScream >= §7!r§.§<!c§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §+!j§.mTryToScream = §7!r§.§<!c§ - 1;
            }
            §+!j§.mTryToScream -= param1;
            if(§+!j§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§+!j§.mIsScreaming)
         {
            §+!j§.mTryToScream = 0;
            §+!j§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §'!S§(§6!D§.§5K§);
      }
   }
}
