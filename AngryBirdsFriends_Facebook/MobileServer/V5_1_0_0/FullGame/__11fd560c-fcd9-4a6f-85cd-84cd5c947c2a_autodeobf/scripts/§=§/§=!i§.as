package §=§#9
{
   import §6$8§.§1"_§;
   import §^"S§.Sprite;
   
   public class §=!i§ extends §=!x§
   {
       
      
      private var §47§:Number;
      
      private var §+O§:Boolean;
      
      private var §`"n§:Number;
      
      private var §%!m§:int;
      
      private var §9$1§:Number = 0;
      
      private var §!h§:§2!f§;
      
      private var §^#5§:Number;
      
      public function §=!i§(param1:Sprite, param2:§2!f§, param3:§1"_§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound);
         this.§!h§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§47§ = _loc4_ * 1000;
         this.§^#5§ = param3.scale;
      }
      
      override protected function onStart() : void
      {
         this.§`"n§ = 0;
         this.§+O§ = this.§^#5§ != this.§!h§.scale;
         if(this.§+O§)
         {
            this.§`"n§ = this.§^#5§ - this.§!h§.scale;
            this.§%!m§ = 0;
         }
      }
      
      private function §1!n§() : void
      {
         §&+§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§+O§)
         {
            this.§%!m§ += param1;
            if(this.§%!m§ >= this.§47§)
            {
               this.§+O§ = false;
            }
            _loc2_ = Math.max(0,this.§%!m§);
            _loc2_ = Math.min(_loc2_,this.§47§);
            _loc3_ = mTween(_loc2_,0,1,this.§47§);
            _loc4_ = (_loc3_ - this.§9$1§) * this.§`"n§;
            this.§9$1§ = _loc3_;
            this.§!h§.scale += _loc4_;
         }
      }
   }
}
