package §9_§
{
   import §4N§.§7E§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §<F§ extends §+>§
   {
       
      
      public function §<F§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<p§.mTryToBlink > 0)
         {
            if(§<p§.mTryToBlink >= §`-§.§&H§)
            {
               _loc2_ = true;
               §<p§.mTryToBlink = §`-§.§&H§ - 1;
            }
            §<p§.mTryToBlink -= param1;
            if(§<p§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<p§.mIsBlinking)
         {
            §<p§.mTryToBlink = 0;
            §<p§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§<p§.mTryToScream > 0)
         {
            if(§<p§.mTryToScream >= §`-§.§`w§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §<p§.mTryToScream = §`-§.§`w§ - 1;
            }
            §<p§.mTryToScream -= param1;
            if(§<p§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§<p§.mIsScreaming)
         {
            §<p§.mTryToScream = 0;
            §<p§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §;v§(§7E§.§[s§);
      }
   }
}
