package §@#b§
{
   import §,#e§.Sprite;
   import §4"Y§.§'#x§;
   
   public class §3#$§ extends §6$,§
   {
       
      
      private var §%"T§:Number;
      
      private var §;!E§:Boolean;
      
      private var §6!j§:Number;
      
      private var §9"h§:int;
      
      private var §8n§:Number = 0;
      
      private var §`t§:§=$;§;
      
      private var §#!1§:Number;
      
      private var §6$+§:Number;
      
      public function §3#$§(param1:Sprite, param2:§=$;§, param3:§'#x§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§`t§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§%"T§ = _loc4_ * 1000;
         this.§#!1§ = param3.scale;
         this.§6$+§ = param3.finalScale;
      }
      
      override protected function onStart() : void
      {
         this.§6!j§ = 0;
         if(this.§6$+§ != this.§#!1§)
         {
            this.§;!E§ = true;
            this.§6!j§ = this.§6$+§ - this.§`t§.scale;
            this.§9"h§ = 0;
         }
         else
         {
            this.§;!E§ = this.§#!1§ != this.§`t§.scale;
            if(this.§;!E§)
            {
               this.§6!j§ = this.§#!1§ - this.§`t§.scale;
               this.§9"h§ = 0;
            }
         }
      }
      
      private function §;!4§() : void
      {
         §+$D§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§;!E§)
         {
            this.§9"h§ += param1;
            if(this.§9"h§ >= this.§%"T§)
            {
               this.§;!E§ = false;
            }
            _loc2_ = Math.max(0,this.§9"h§);
            _loc2_ = Math.min(_loc2_,this.§%"T§);
            _loc3_ = mTween(_loc2_,0,1,this.§%"T§);
            _loc4_ = (_loc3_ - this.§8n§) * this.§6!j§;
            this.§8n§ = _loc3_;
            this.§`t§.§`"G§(_loc4_);
         }
      }
   }
}
