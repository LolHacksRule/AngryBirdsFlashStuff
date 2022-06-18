package §"C§
{
   import §%b§.§0!Z§;
   import §?!H§.§=!D§;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class §%F§ extends §?w§
   {
       
      
      public function §%F§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§9X§.mTryToBlink > 0)
         {
            if(§9X§.mTryToBlink >= §]y§.§7!@§)
            {
               _loc2_ = true;
               §9X§.mTryToBlink = §]y§.§7!@§ - 1;
            }
            §9X§.mTryToBlink -= param1;
            if(§9X§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§9X§.mIsBlinking)
         {
            §9X§.mTryToBlink = 0;
            §9X§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§9X§.mTryToScream > 0)
         {
            if(§9X§.mTryToScream >= §]y§.§"d§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §9X§.mTryToScream = §]y§.§"d§ - 1;
            }
            §9X§.mTryToScream -= param1;
            if(§9X§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§9X§.mIsScreaming)
         {
            §9X§.mTryToScream = 0;
            §9X§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §1!A§(§=!D§.§3E§);
      }
   }
}
