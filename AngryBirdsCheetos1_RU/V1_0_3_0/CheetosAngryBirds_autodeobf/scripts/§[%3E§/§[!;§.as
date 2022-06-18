package §[>§
{
   import §'G§.§5e§;
   import §4]§.b2World;
   import §9!a§.Sprite;
   import §9T§.§=!^§;
   
   public class §[!;§ extends §`,§
   {
       
      
      public function §[!;§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§#!9§.mTryToBlink > 0)
         {
            if(§#!9§.mTryToBlink >= §]S§.§9V§)
            {
               _loc2_ = true;
               §#!9§.mTryToBlink = §]S§.§9V§ - 1;
            }
            §#!9§.mTryToBlink -= param1;
            if(§#!9§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§#!9§.mIsBlinking)
         {
            §#!9§.mTryToBlink = 0;
            §#!9§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§#!9§.mTryToScream > 0)
         {
            if(§#!9§.mTryToScream >= §]S§.§]T§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §#!9§.mTryToScream = §]S§.§]T§ - 1;
            }
            §#!9§.mTryToScream -= param1;
            if(§#!9§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§#!9§.mIsScreaming)
         {
            §#!9§.mTryToScream = 0;
            §#!9§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §]!%§(§5e§.§"N§);
      }
   }
}
