package §<#S§
{
   import §!6§.Sprite;
   import §'!O§.§#$;§;
   
   public class §="J§ extends §9H§
   {
       
      
      private var §?"w§:Number;
      
      private var §8"m§:Number = 0;
      
      private var §#"[§:Number = 0;
      
      private var §>#m§:Number = 0;
      
      private var §4"U§:Number = 0;
      
      private var §%#x§:Boolean;
      
      private var §7#6§:Number;
      
      private var §0!0§:Number;
      
      private var §8r§:int;
      
      private var §0#!§:Number = 0;
      
      private var §4!<§:§8#P§;
      
      public function §="J§(param1:Sprite, param2:§8#P§, param3:§#$;§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§4!<§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§?"w§ = _loc4_ * 1000;
         if(param3.xOffsetPercent && param3.yOffsetPercent)
         {
            this.§8"m§ = param3.xOffsetPercent;
            this.§#"[§ = param3.yOffsetPercent;
         }
         else if(param3.movement)
         {
            this.§>#m§ = param3.movement.x;
            this.§4"U§ = param3.movement.y;
         }
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = § U§.x;
         var _loc2_:Number = § U§.y;
         this.§7#6§ = 0;
         this.§0!0§ = 0;
         if(this.§8"m§ != 0 || this.§#"[§ != 0)
         {
            this.§%#x§ = true;
            _loc1_ += this.§4!<§.§`$C§ * this.§8"m§;
            _loc2_ += this.§4!<§.§<"H§ * this.§#"[§;
            this.§7#6§ = _loc1_ - § U§.x;
            this.§0!0§ = _loc2_ - § U§.y;
         }
         else if(this.§>#m§ != 0 || this.§4"U§ != 0)
         {
            this.§%#x§ = true;
            this.§7#6§ = this.§>#m§;
            this.§0!0§ = this.§4"U§;
         }
         if(this.§%#x§)
         {
            this.§8r§ = 0;
         }
      }
      
      private function §6#>§() : void
      {
         §%#_§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%#x§)
         {
            this.§8r§ += param1;
            if(this.§8r§ >= this.§?"w§)
            {
               this.§%#x§ = false;
            }
            _loc2_ = Math.max(0,this.§8r§);
            _loc2_ = Math.min(_loc2_,this.§?"w§);
            _loc3_ = mTween(_loc2_,0,1,this.§?"w§);
            _loc4_ = (_loc3_ - this.§0#!§) * this.§7#6§;
            _loc5_ = (_loc3_ - this.§0#!§) * this.§0!0§;
            this.§0#!§ = _loc3_;
            § U§.x += _loc4_;
            § U§.y += _loc5_;
         }
      }
   }
}
