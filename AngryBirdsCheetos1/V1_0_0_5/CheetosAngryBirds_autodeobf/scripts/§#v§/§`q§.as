package §#v§
{
   import §!!R§.Sprite;
   import §,B§.§1F§;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class §`q§ extends §#3§
   {
       
      
      public function §`q§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5-§.mTryToBlink > 0)
         {
            if(§5-§.mTryToBlink >= §"d§.§>!G§)
            {
               _loc2_ = true;
               §5-§.mTryToBlink = §"d§.§>!G§ - 1;
            }
            §5-§.mTryToBlink -= param1;
            if(§5-§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5-§.mIsBlinking)
         {
            §5-§.mTryToBlink = 0;
            §5-§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5-§.mTryToScream > 0)
         {
            if(§5-§.mTryToScream >= §"d§.§1!&§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §5-§.mTryToScream = §"d§.§1!&§ - 1;
            }
            §5-§.mTryToScream -= param1;
            if(§5-§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5-§.mIsScreaming)
         {
            §5-§.mTryToScream = 0;
            §5-§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §0K§(§1F§.§]w§);
      }
   }
}
