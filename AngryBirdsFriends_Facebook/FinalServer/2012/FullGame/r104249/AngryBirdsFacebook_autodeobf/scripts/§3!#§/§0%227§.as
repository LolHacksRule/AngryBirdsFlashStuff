package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§5"L§;
   import §=%§.§7!g§;
   import §]!v§.Sprite;
   
   public class §0"7§ extends §5"A§
   {
       
      
      public function §0"7§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<!K§.mTryToBlink > 0)
         {
            if(§<!K§.mTryToBlink >= §38§.§]!V§)
            {
               _loc2_ = true;
               §<!K§.mTryToBlink = §38§.§]!V§ - 1;
            }
            §<!K§.mTryToBlink -= param1;
            if(§<!K§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<!K§.mIsBlinking)
         {
            §<!K§.mTryToBlink = 0;
            §<!K§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<!K§.mTryToScream > 0)
         {
            if(§<!K§.mTryToScream >= §38§.§;""§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §<!K§.mTryToScream = §38§.§;""§ - 1;
            }
            §<!K§.mTryToScream -= param1;
            if(§<!K§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<!K§.mIsScreaming)
         {
            §<!K§.mTryToScream = 0;
            §<!K§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §!?§(§7!g§.§1%§);
      }
   }
}
