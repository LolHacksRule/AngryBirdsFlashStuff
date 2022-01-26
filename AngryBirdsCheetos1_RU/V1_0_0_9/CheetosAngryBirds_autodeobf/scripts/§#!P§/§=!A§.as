package §#!P§
{
   import §!!B§.b2World;
   import §3E§.§6w§;
   import §7u§.Sprite;
   import §9!%§.§=A§;
   
   public class §=!A§ extends §2!W§
   {
       
      
      public function §=!A§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<k§.mTryToBlink > 0)
         {
            if(§<k§.mTryToBlink >= §1!Y§.§^_§)
            {
               _loc2_ = true;
               §<k§.mTryToBlink = §1!Y§.§^_§ - 1;
            }
            §<k§.mTryToBlink -= param1;
            if(§<k§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<k§.mIsBlinking)
         {
            §<k§.mTryToBlink = 0;
            §<k§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<k§.mTryToScream > 0)
         {
            if(§<k§.mTryToScream >= §1!Y§.§0!P§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §<k§.mTryToScream = §1!Y§.§0!P§ - 1;
            }
            §<k§.mTryToScream -= param1;
            if(§<k§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<k§.mIsScreaming)
         {
            §<k§.mTryToScream = 0;
            §<k§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §#`§(§=A§.§0w§);
      }
   }
}
