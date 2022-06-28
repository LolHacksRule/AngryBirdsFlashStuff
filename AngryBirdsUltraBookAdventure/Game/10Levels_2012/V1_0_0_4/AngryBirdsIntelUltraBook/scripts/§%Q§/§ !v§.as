package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §<!1§.§<!R§;
   import §`w§.b2World;
   
   public class § !v§ extends §`!<§
   {
       
      
      public function § !v§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§?!M§.mTryToBlink > 0)
         {
            if(§?!M§.mTryToBlink >= §'!%§.§?r§)
            {
               _loc2_ = true;
               §?!M§.mTryToBlink = §'!%§.§?r§ - 1;
            }
            §?!M§.mTryToBlink -= param1;
            if(§?!M§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§?!M§.mIsBlinking)
         {
            §?!M§.mTryToBlink = 0;
            §?!M§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§?!M§.mTryToScream > 0)
         {
            if(§?!M§.mTryToScream >= §'!%§.§2<§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §?!M§.mTryToScream = §'!%§.§2<§ - 1;
            }
            §?!M§.mTryToScream -= param1;
            if(§?!M§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§?!M§.mIsScreaming)
         {
            §?!M§.mTryToScream = 0;
            §?!M§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@j§(§<!R§.§;8§);
      }
   }
}
