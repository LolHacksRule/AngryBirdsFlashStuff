package §`"§
{
   import §!T§.§`P§;
   import §9!?§.§^]§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § P§ extends §"e§
   {
       
      
      public function § P§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§>b§.mTryToBlink > 0)
         {
            if(§>b§.mTryToBlink >= §'q§.§5N§)
            {
               _loc2_ = true;
               §>b§.mTryToBlink = §'q§.§5N§ - 1;
            }
            §>b§.mTryToBlink -= param1;
            if(§>b§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§>b§.mIsBlinking)
         {
            §>b§.mTryToBlink = 0;
            §>b§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§>b§.mTryToScream > 0)
         {
            if(§>b§.mTryToScream >= §'q§.§3P§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §>b§.mTryToScream = §'q§.§3P§ - 1;
            }
            §>b§.mTryToScream -= param1;
            if(§>b§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§>b§.mIsScreaming)
         {
            §>b§.mTryToScream = 0;
            §>b§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §0Z§(§`P§.§8d§);
      }
   }
}
