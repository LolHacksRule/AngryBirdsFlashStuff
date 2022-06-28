package § !3§
{
   import §!c§.§8M§;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=R§ extends §'§
   {
       
      
      public function §=R§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§"0§.mTryToBlink > 0)
         {
            if(§"0§.mTryToBlink >= §[4§.§&!'§)
            {
               _loc2_ = true;
               §"0§.mTryToBlink = §[4§.§&!'§ - 1;
            }
            §"0§.mTryToBlink -= param1;
            if(§"0§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§"0§.mIsBlinking)
         {
            §"0§.mTryToBlink = 0;
            §"0§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§"0§.mTryToScream > 0)
         {
            if(§"0§.mTryToScream >= §[4§.§;!E§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §"0§.mTryToScream = §[4§.§;!E§ - 1;
            }
            §"0§.mTryToScream -= param1;
            if(§"0§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§"0§.mIsScreaming)
         {
            §"0§.mTryToScream = 0;
            §"0§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §3%§(§8M§.§7!§);
      }
   }
}
