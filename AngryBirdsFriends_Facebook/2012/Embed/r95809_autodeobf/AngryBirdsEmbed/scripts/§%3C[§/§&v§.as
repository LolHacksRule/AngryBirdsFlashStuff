package §<[§
{
   import §+!%§.§'!"§;
   import §,Y§.§5F§;
   import §->§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §&v§ extends §>!4§
   {
       
      
      public function §&v§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!0§.mTryToBlink > 0)
         {
            if(§2!0§.mTryToBlink >= §;+§.§`!6§)
            {
               _loc2_ = true;
               §2!0§.mTryToBlink = §;+§.§`!6§ - 1;
            }
            §2!0§.mTryToBlink -= param1;
            if(§2!0§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!0§.mIsBlinking)
         {
            §2!0§.mTryToBlink = 0;
            §2!0§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2!0§.mTryToScream > 0)
         {
            if(§2!0§.mTryToScream >= §;+§.§@2§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2!0§.mTryToScream = §;+§.§@2§ - 1;
            }
            §2!0§.mTryToScream -= param1;
            if(§2!0§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2!0§.mIsScreaming)
         {
            §2!0§.mTryToScream = 0;
            §2!0§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §#!7§(§5F§.§[K§);
      }
   }
}
