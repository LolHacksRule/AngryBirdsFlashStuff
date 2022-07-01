package §%!&§
{
   import §%!<§.§=!j§;
   import §%h§.§5X§;
   import §?!E§.b2World;
   import §]!2§.Sprite;
   
   public class §@!§ extends §;!x§
   {
       
      
      public function §@!§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§+G§.mTryToBlink > 0)
         {
            if(§+G§.mTryToBlink >= §5",§.§&M§)
            {
               _loc2_ = true;
               §+G§.mTryToBlink = §5",§.§&M§ - 1;
            }
            §+G§.mTryToBlink -= param1;
            if(§+G§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§+G§.mIsBlinking)
         {
            §+G§.mTryToBlink = 0;
            §+G§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§+G§.mTryToScream > 0)
         {
            if(§+G§.mTryToScream >= §5",§.§-!5§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §+G§.mTryToScream = §5",§.§-!5§ - 1;
            }
            §+G§.mTryToScream -= param1;
            if(§+G§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§+G§.mIsScreaming)
         {
            §+G§.mTryToScream = 0;
            §+G§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,!_§(§=!j§.§9![§);
      }
   }
}
