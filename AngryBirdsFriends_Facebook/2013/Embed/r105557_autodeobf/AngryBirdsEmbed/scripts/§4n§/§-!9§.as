package §4n§
{
   import §9!#§.§+5§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-!9§ extends §@!4§
   {
       
      
      public function §-!9§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`V§.mTryToBlink > 0)
         {
            if(§`V§.mTryToBlink >= §8X§.§^!§)
            {
               _loc2_ = true;
               §`V§.mTryToBlink = §8X§.§^!§ - 1;
            }
            §`V§.mTryToBlink -= param1;
            if(§`V§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`V§.mIsBlinking)
         {
            §`V§.mTryToBlink = 0;
            §`V§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`V§.mTryToScream > 0)
         {
            if(§`V§.mTryToScream >= §8X§.§4k§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §`V§.mTryToScream = §8X§.§4k§ - 1;
            }
            §`V§.mTryToScream -= param1;
            if(§`V§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`V§.mIsScreaming)
         {
            §`V§.mTryToScream = 0;
            §`V§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §2!%§(§+5§.§30§);
      }
   }
}
