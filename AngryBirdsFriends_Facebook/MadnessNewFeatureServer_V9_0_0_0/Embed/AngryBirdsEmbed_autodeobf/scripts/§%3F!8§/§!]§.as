package §?!8§
{
   import §2E§.§96§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §!]§ extends §]f§
   {
       
      
      public function §!]§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2W§.mTryToBlink > 0)
         {
            if(§2W§.mTryToBlink >= §=0§.§"-§)
            {
               _loc2_ = true;
               §2W§.mTryToBlink = §=0§.§"-§ - 1;
            }
            §2W§.mTryToBlink -= param1;
            if(§2W§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2W§.mIsBlinking)
         {
            §2W§.mTryToBlink = 0;
            §2W§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2W§.mTryToScream > 0)
         {
            if(§2W§.mTryToScream >= §=0§.§<`§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2W§.mTryToScream = §=0§.§<`§ - 1;
            }
            §2W§.mTryToScream -= param1;
            if(§2W§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2W§.mIsScreaming)
         {
            §2W§.mTryToScream = 0;
            §2W§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §;o§(§96§.§@w§);
      }
   }
}
