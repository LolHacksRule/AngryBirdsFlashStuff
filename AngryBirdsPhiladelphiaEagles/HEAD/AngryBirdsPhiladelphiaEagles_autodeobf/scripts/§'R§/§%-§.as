package §'R§
{
   import §%"§.§ do§;
   import §<!N§.Sprite;
   import §`=§.§?!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §%-§ extends §&r§
   {
       
      
      public function §%-§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§,q§.mTryToBlink > 0)
         {
            if(§,q§.mTryToBlink >= §-$§.§&&§)
            {
               _loc2_ = true;
               §,q§.mTryToBlink = §-$§.§&&§ - 1;
            }
            §,q§.mTryToBlink -= param1;
            if(§,q§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§,q§.mIsBlinking)
         {
            §,q§.mTryToBlink = 0;
            §,q§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§,q§.mTryToScream > 0)
         {
            if(§,q§.mTryToScream >= §-$§.§`!,§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §,q§.mTryToScream = §-$§.§`!,§ - 1;
            }
            §,q§.mTryToScream -= param1;
            if(§,q§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§,q§.mIsScreaming)
         {
            §,q§.mTryToScream = 0;
            §,q§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@!E§(§?!E§.§4s§);
      }
   }
}
