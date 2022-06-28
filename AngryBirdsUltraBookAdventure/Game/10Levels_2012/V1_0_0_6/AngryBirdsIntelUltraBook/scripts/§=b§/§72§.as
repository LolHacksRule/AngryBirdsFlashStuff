package §=b§
{
   import §#V§.b2World;
   import §-d§.§-C§;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   
   public class §72§ extends §`!_§
   {
       
      
      public function §72§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7![§.mTryToBlink > 0)
         {
            if(§7![§.mTryToBlink >= § 6§.§;3§)
            {
               _loc2_ = true;
               §7![§.mTryToBlink = § 6§.§;3§ - 1;
            }
            §7![§.mTryToBlink -= param1;
            if(§7![§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7![§.mIsBlinking)
         {
            §7![§.mTryToBlink = 0;
            §7![§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7![§.mTryToScream > 0)
         {
            if(§7![§.mTryToScream >= § 6§.§8!3§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §7![§.mTryToScream = § 6§.§8!3§ - 1;
            }
            §7![§.mTryToScream -= param1;
            if(§7![§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7![§.mIsScreaming)
         {
            §7![§.mTryToScream = 0;
            §7![§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §+!G§(§-C§.§2!j§);
      }
   }
}
