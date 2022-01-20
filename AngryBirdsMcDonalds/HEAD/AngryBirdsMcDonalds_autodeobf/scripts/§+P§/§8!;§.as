package §+P§
{
   import §!_§.§;U§;
   import §-R§.§3$§;
   import §9`§.§#U§;
   import §`!n§.Sprite;
   
   public class §8!;§ extends §3$§
   {
       
      
      public var loop:Boolean = false;
      
      private var §#!I§:Number = 0;
      
      public function §8!;§(param1:§;U§, param2:Sprite, param3:§#U§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §1s§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§#!I§ + §5_§ < 0)
            {
               this.§#!I§ += §5_§;
            }
            else if(-_loc3_ + this.§#!I§ - §5_§ > §5_§)
            {
               this.§#!I§ -= §5_§;
            }
         }
         §]!M§.x = -_loc3_ + this.§#!I§;
         §]!M§.y = -param2;
         §'J§();
      }
   }
}
