package §!!P§
{
   import §-<§.§?!N§;
   import §6#H§.Sprite;
   
   public class §=!?§ extends §4"T§
   {
       
      
      private var §,!r§:Number;
      
      private var §6"]§:Boolean;
      
      private var §`l§:Number;
      
      private var §["f§:int;
      
      private var §3!'§:Number = 0;
      
      private var §6#I§:§2#%§;
      
      private var §5>§:Number;
      
      private var §"#b§:Number;
      
      public function §=!?§(param1:Sprite, param2:§2#%§, param3:§?!N§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§6#I§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§,!r§ = _loc4_ * 1000;
         this.§5>§ = param3.scale;
         this.§"#b§ = param3.finalScale;
      }
      
      override protected function onStart() : void
      {
         this.§`l§ = 0;
         if(this.§"#b§ != this.§5>§)
         {
            this.§6"]§ = true;
            this.§`l§ = this.§"#b§ - this.§6#I§.scale;
            this.§["f§ = 0;
         }
         else
         {
            this.§6"]§ = this.§5>§ != this.§6#I§.scale;
            if(this.§6"]§)
            {
               this.§`l§ = this.§5>§ - this.§6#I§.scale;
               this.§["f§ = 0;
            }
         }
      }
      
      private function §`"?§() : void
      {
         §3"G§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§6"]§)
         {
            this.§["f§ += param1;
            if(this.§["f§ >= this.§,!r§)
            {
               this.§6"]§ = false;
            }
            _loc2_ = Math.max(0,this.§["f§);
            _loc2_ = Math.min(_loc2_,this.§,!r§);
            _loc3_ = mTween(_loc2_,0,1,this.§,!r§);
            _loc4_ = (_loc3_ - this.§3!'§) * this.§`l§;
            this.§3!'§ = _loc3_;
            this.§6#I§.§%!<§(_loc4_);
         }
      }
   }
}
