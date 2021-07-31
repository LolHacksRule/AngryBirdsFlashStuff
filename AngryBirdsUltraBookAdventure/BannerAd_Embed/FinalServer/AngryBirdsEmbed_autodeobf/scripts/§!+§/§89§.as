package §!+§
{
   import §7!0§.§6Z§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §89§ extends §>G§
   {
       
      
      public function §89§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§'j§.mTryToBlink > 0)
         {
            if(§'j§.mTryToBlink >= override.§for §)
            {
               _loc2_ = true;
               §'j§.mTryToBlink = override.§for § - 1;
            }
            §'j§.mTryToBlink -= param1;
            if(§'j§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§'j§.mIsBlinking)
         {
            §'j§.mTryToBlink = 0;
            §'j§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§'j§.mTryToScream > 0)
         {
            if(§'j§.mTryToScream >= override.§`=§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §'j§.mTryToScream = override.§`=§ - 1;
            }
            §'j§.mTryToScream -= param1;
            if(§'j§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§'j§.mIsScreaming)
         {
            §'j§.mTryToScream = 0;
            §'j§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §+!&§(§6Z§.§0v§);
      }
   }
}
