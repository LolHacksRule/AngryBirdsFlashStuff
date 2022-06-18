package §&c§
{
   import §#;§.§4!8§;
   import §;q§.Sprite;
   import §^V§.§<e§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § 1§ extends §9h§
   {
       
      
      public function § 1§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<!'§.mTryToBlink > 0)
         {
            if(§<!'§.mTryToBlink >= §+`§.§'O§)
            {
               _loc2_ = true;
               §<!'§.mTryToBlink = §+`§.§'O§ - 1;
            }
            §<!'§.mTryToBlink -= param1;
            if(§<!'§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<!'§.mIsBlinking)
         {
            §<!'§.mTryToBlink = 0;
            §<!'§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<!'§.mTryToScream > 0)
         {
            if(§<!'§.mTryToScream >= §+`§.§0;§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §<!'§.mTryToScream = §+`§.§0;§ - 1;
            }
            §<!'§.mTryToScream -= param1;
            if(§<!'§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<!'§.mIsScreaming)
         {
            §<!'§.mTryToScream = 0;
            §<!'§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@!"§(§<e§.§use§);
      }
   }
}
