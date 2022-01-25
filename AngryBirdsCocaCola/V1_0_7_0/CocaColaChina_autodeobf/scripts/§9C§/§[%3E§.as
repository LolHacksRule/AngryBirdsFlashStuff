package §9C§
{
   import §#m§.§`5§;
   import §,!Q§.Sprite;
   import §4A§.§&_§;
   import §4U§.b2World;
   
   public class §[>§ extends §4!G§
   {
       
      
      public function §[>§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5U§.mTryToBlink > 0)
         {
            if(§5U§.mTryToBlink >= §9!@§.§3!M§)
            {
               _loc2_ = true;
               §5U§.mTryToBlink = §9!@§.§3!M§ - 1;
            }
            §5U§.mTryToBlink -= param1;
            if(§5U§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5U§.mIsBlinking)
         {
            §5U§.mTryToBlink = 0;
            §5U§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§5U§.mTryToScream > 0)
         {
            if(§5U§.mTryToScream >= §9!@§.§;X§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §5U§.mTryToScream = §9!@§.§;X§ - 1;
            }
            §5U§.mTryToScream -= param1;
            if(§5U§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§5U§.mIsScreaming)
         {
            §5U§.mTryToScream = 0;
            §5U§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §;Y§(§`5§.§&"§);
      }
   }
}
