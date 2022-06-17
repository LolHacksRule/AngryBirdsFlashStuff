package §<#S§
{
   import §!6§.Sprite;
   import §'!O§.§#$;§;
   
   public class §5!y§ extends §9H§
   {
       
      
      private var §?"w§:Number;
      
      private var §%#x§:Boolean;
      
      private var §3#3§:Number;
      
      private var §8r§:int;
      
      private var §0#!§:Number = 0;
      
      private var §4!<§:§8#P§;
      
      private var §6z§:Number;
      
      public function §5!y§(param1:Sprite, param2:§8#P§, param3:§#$;§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§4!<§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§?"w§ = _loc4_ * 1000;
         this.§6z§ = param3.scale;
      }
      
      override protected function onStart() : void
      {
         this.§3#3§ = 0;
         this.§%#x§ = this.§6z§ != this.§4!<§.scale;
         if(this.§%#x§)
         {
            this.§3#3§ = this.§6z§ - this.§4!<§.scale;
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
            _loc4_ = (_loc3_ - this.§0#!§) * this.§3#3§;
            this.§0#!§ = _loc3_;
            this.§4!<§.scale += _loc4_;
         }
      }
   }
}
