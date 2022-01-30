package §]r§
{
   import §3>§.§>!&§;
   import §7q§.Sprite;
   import §=9§.b2World;
   import §=b§.§-!K§;
   
   public class §@!§ extends §9!R§
   {
       
      
      public function §@!§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!7§.mTryToBlink > 0)
         {
            if(§2!7§.mTryToBlink >= §+c§.§#!V§)
            {
               _loc2_ = true;
               §2!7§.mTryToBlink = §+c§.§#!V§ - 1;
            }
            §2!7§.mTryToBlink -= param1;
            if(§2!7§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!7§.mIsBlinking)
         {
            §2!7§.mTryToBlink = 0;
            §2!7§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!7§.mTryToScream > 0)
         {
            if(§2!7§.mTryToScream >= §+c§.§]![§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2!7§.mTryToScream = §+c§.§]![§ - 1;
            }
            §2!7§.mTryToScream -= param1;
            if(§2!7§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!7§.mIsScreaming)
         {
            §2!7§.mTryToScream = 0;
            §2!7§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §%i§(§>!&§.§2!V§);
      }
   }
}
