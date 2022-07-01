package § ""§
{
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §7z§.b2World;
   import §8q§.§+P§;
   
   public class §[!a§ extends §%,§
   {
       
      
      public function §[!a§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§>!M§.mTryToBlink > 0)
         {
            if(§>!M§.mTryToBlink >= §<"6§.§+Q§)
            {
               _loc2_ = true;
               §>!M§.mTryToBlink = §<"6§.§+Q§ - 1;
            }
            §>!M§.mTryToBlink -= param1;
            if(§>!M§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§>!M§.mIsBlinking)
         {
            §>!M§.mTryToBlink = 0;
            §>!M§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§>!M§.mTryToScream > 0)
         {
            if(§>!M§.mTryToScream >= §<"6§.§3I§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §>!M§.mTryToScream = §<"6§.§3I§ - 1;
            }
            §>!M§.mTryToScream -= param1;
            if(§>!M§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§>!M§.mIsScreaming)
         {
            §>!M§.mTryToScream = 0;
            §>!M§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §4!u§(§+P§.§#!2§);
      }
   }
}
