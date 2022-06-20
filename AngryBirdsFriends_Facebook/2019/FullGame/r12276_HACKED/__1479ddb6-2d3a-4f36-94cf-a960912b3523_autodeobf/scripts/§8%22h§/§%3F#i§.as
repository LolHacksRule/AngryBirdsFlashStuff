package §8"h§
{
   import §#!S§.§^!5§;
   import §#Z§.Sprite;
   
   public class §?#i§ extends §]#H§
   {
       
      
      private var §'">§:Number;
      
      private var §'#v§:Boolean;
      
      private var §2$#§:Number;
      
      private var §-!k§:int;
      
      private var §5!q§:Number = 0;
      
      private var §=!6§:§`#s§;
      
      private var §6#q§:Number;
      
      private var §67§:Number;
      
      public function §?#i§(param1:Sprite, param2:§`#s§, param3:§^!5§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§=!6§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§'">§ = _loc4_ * 1000;
         this.§6#q§ = param3.scale;
         this.§67§ = param3.finalScale;
      }
      
      override protected function onStart() : void
      {
         this.§2$#§ = 0;
         if(this.§67§ != this.§6#q§)
         {
            this.§'#v§ = true;
            this.§2$#§ = this.§67§ - this.§=!6§.scale;
            this.§-!k§ = 0;
         }
         else
         {
            this.§'#v§ = this.§6#q§ != this.§=!6§.scale;
            if(this.§'#v§)
            {
               this.§2$#§ = this.§6#q§ - this.§=!6§.scale;
               this.§-!k§ = 0;
            }
         }
      }
      
      private function §[w§() : void
      {
         §8"%§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§'#v§)
         {
            this.§-!k§ += param1;
            if(this.§-!k§ >= this.§'">§)
            {
               this.§'#v§ = false;
            }
            _loc2_ = Math.max(0,this.§-!k§);
            _loc2_ = Math.min(_loc2_,this.§'">§);
            _loc3_ = mTween(_loc2_,0,1,this.§'">§);
            _loc4_ = (_loc3_ - this.§5!q§) * this.§2$#§;
            this.§5!q§ = _loc3_;
            this.§=!6§.§3"l§(_loc4_);
         }
      }
   }
}
