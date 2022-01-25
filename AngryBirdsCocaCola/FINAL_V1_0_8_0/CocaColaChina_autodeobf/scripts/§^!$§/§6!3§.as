package §^!$§
{
   import §%!a§.§^!=§;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §<!L§.b2World;
   
   public class §6!3§ extends §?![§
   {
       
      
      public function §6!3§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^!9§.mTryToBlink > 0)
         {
            if(§^!9§.mTryToBlink >= §4<§.§7!V§)
            {
               _loc2_ = true;
               §^!9§.mTryToBlink = §4<§.§7!V§ - 1;
            }
            §^!9§.mTryToBlink -= param1;
            if(§^!9§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^!9§.mIsBlinking)
         {
            §^!9§.mTryToBlink = 0;
            §^!9§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§^!9§.mTryToScream > 0)
         {
            if(§^!9§.mTryToScream >= §4<§.§]7§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §^!9§.mTryToScream = §4<§.§]7§ - 1;
            }
            §^!9§.mTryToScream -= param1;
            if(§^!9§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§^!9§.mIsScreaming)
         {
            §^!9§.mTryToScream = 0;
            §^!9§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §&!Q§(§^!=§.§+d§);
      }
   }
}
