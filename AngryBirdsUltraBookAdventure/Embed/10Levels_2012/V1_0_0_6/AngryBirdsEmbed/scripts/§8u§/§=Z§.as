package §8u§
{
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=Z§ extends §0r§
   {
       
      
      public function §=Z§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!;§.mTryToBlink > 0)
         {
            if(§7!;§.mTryToBlink >= §44§.§8g§)
            {
               _loc2_ = true;
               §7!;§.mTryToBlink = §44§.§8g§ - 1;
            }
            §7!;§.mTryToBlink -= param1;
            if(§7!;§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!;§.mIsBlinking)
         {
            §7!;§.mTryToBlink = 0;
            §7!;§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!;§.mTryToScream > 0)
         {
            if(§7!;§.mTryToScream >= §44§.§;<§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §7!;§.mTryToScream = §44§.§;<§ - 1;
            }
            §7!;§.mTryToScream -= param1;
            if(§7!;§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!;§.mIsScreaming)
         {
            §7!;§.mTryToScream = 0;
            §7!;§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §'!"§(§implements§.§'!;§);
      }
   }
}
