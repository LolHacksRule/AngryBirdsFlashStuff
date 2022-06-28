package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import §^!L§.§%h§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#z§ extends §;!%§
   {
       
      
      public function §#z§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§;S§.mTryToBlink > 0)
         {
            if(§;S§.mTryToBlink >= §[!J§.§4!-§)
            {
               _loc2_ = true;
               §;S§.mTryToBlink = §[!J§.§4!-§ - 1;
            }
            §;S§.mTryToBlink -= param1;
            if(§;S§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§;S§.mIsBlinking)
         {
            §;S§.mTryToBlink = 0;
            §;S§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§;S§.mTryToScream > 0)
         {
            if(§;S§.mTryToScream >= §[!J§.§`"§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §;S§.mTryToScream = §[!J§.§`"§ - 1;
            }
            §;S§.mTryToScream -= param1;
            if(§;S§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§;S§.mIsScreaming)
         {
            §;S§.mTryToScream = 0;
            §;S§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §,H§(§%h§.§&;§);
      }
   }
}
