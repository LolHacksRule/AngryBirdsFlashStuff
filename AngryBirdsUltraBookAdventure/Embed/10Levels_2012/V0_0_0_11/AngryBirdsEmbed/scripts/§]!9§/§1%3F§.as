package §]!9§
{
   import §%x§.§#;§;
   import §?^§.Sprite;
   import §`K§.§0r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1?§ extends §>2§
   {
       
      
      public function §1?§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!@§.mTryToBlink > 0)
         {
            if(§2!@§.mTryToBlink >= §1c§.§&!'§)
            {
               _loc2_ = true;
               §2!@§.mTryToBlink = §1c§.§&!'§ - 1;
            }
            §2!@§.mTryToBlink -= param1;
            if(§2!@§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!@§.mIsBlinking)
         {
            §2!@§.mTryToBlink = 0;
            §2!@§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!@§.mTryToScream > 0)
         {
            if(§2!@§.mTryToScream >= §1c§.§1!6§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2!@§.mTryToScream = §1c§.§1!6§ - 1;
            }
            §2!@§.mTryToScream -= param1;
            if(§2!@§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!@§.mIsScreaming)
         {
            §2!@§.mTryToScream = 0;
            §2!@§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §+t§(§0r§.§^a§);
      }
   }
}
