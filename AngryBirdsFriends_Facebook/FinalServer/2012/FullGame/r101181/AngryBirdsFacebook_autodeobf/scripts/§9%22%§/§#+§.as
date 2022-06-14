package §9"%§
{
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §#+§ extends §&!r§
   {
       
      
      public function §#+§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§"!&§.mTryToBlink > 0)
         {
            if(§"!&§.mTryToBlink >= §#!D§.§ !'§)
            {
               _loc2_ = true;
               §"!&§.mTryToBlink = §#!D§.§ !'§ - 1;
            }
            §"!&§.mTryToBlink -= param1;
            if(§"!&§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§"!&§.mIsBlinking)
         {
            §"!&§.mTryToBlink = 0;
            §"!&§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§"!&§.mTryToScream > 0)
         {
            if(§"!&§.mTryToScream >= §#!D§.§%"$§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §"!&§.mTryToScream = §#!D§.§%"$§ - 1;
            }
            §"!&§.mTryToScream -= param1;
            if(§"!&§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§"!&§.mIsScreaming)
         {
            §"!&§.mTryToScream = 0;
            §"!&§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §&x§(§;!y§.§4>§);
      }
   }
}
