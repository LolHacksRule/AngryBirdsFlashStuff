package §,h§
{
   import §!X§.§86§;
   import §]@§.Sprite;
   import §`j§.b2World;
   import §default§.§!A§;
   
   public class §9!@§ extends §+0§
   {
       
      
      public function §9!@§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2P§.mTryToBlink > 0)
         {
            if(§2P§.mTryToBlink >= §0q§.§?r§)
            {
               _loc2_ = true;
               §2P§.mTryToBlink = §0q§.§?r§ - 1;
            }
            §2P§.mTryToBlink -= param1;
            if(§2P§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2P§.mIsBlinking)
         {
            §2P§.mTryToBlink = 0;
            §2P§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§2P§.mTryToScream > 0)
         {
            if(§2P§.mTryToScream >= §0q§.§<!6§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §2P§.mTryToScream = §0q§.§<!6§ - 1;
            }
            §2P§.mTryToScream -= param1;
            if(§2P§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§2P§.mIsScreaming)
         {
            §2P§.mTryToScream = 0;
            §2P§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         § !=§(§!A§.§8s§);
      }
   }
}
