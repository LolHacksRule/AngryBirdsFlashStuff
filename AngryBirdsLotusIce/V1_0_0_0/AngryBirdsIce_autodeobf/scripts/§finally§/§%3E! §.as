package §finally§
{
   import §"o§.§ M§;
   import §2!"§.§8y§;
   import §@!=§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>! § extends §%!7§
   {
       
      
      public function §>! §(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8h§.mTryToBlink > 0)
         {
            if(§8h§.mTryToBlink >= §`u§.§+"§)
            {
               _loc2_ = true;
               §8h§.mTryToBlink = §`u§.§+"§ - 1;
            }
            §8h§.mTryToBlink -= param1;
            if(§8h§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8h§.mIsBlinking)
         {
            §8h§.mTryToBlink = 0;
            §8h§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§8h§.mTryToScream > 0)
         {
            if(§8h§.mTryToScream >= §`u§.§@S§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §8h§.mTryToScream = §`u§.§@S§ - 1;
            }
            §8h§.mTryToScream -= param1;
            if(§8h§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§8h§.mIsScreaming)
         {
            §8h§.mTryToScream = 0;
            §8h§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §continue§(§8y§.§=s§);
      }
   }
}
