package §=§#9
{
   import §6$8§.§1"_§;
   import §^"S§.Sprite;
   
   public class §,G§ extends §=!x§
   {
       
      
      private var §47§:Number;
      
      private var §#"Z§:Number;
      
      private var §#"o§:Number;
      
      private var §+O§:Boolean;
      
      private var §5!T§:Number;
      
      private var § !?§:Number;
      
      private var §%!m§:int;
      
      private var §9$1§:Number = 0;
      
      private var §!h§:§2!f§;
      
      public function §,G§(param1:Sprite, param2:§2!f§, param3:§1"_§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound);
         this.§!h§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§47§ = _loc4_ * 1000;
         this.§#"Z§ = param3.xOffsetPercent;
         this.§#"o§ = param3.yOffsetPercent;
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §4"D§.x;
         var _loc2_:Number = §4"D§.y;
         this.§5!T§ = 0;
         this.§ !?§ = 0;
         this.§+O§ = this.§#"Z§ != 0 || this.§#"o§ != 0;
         if(this.§+O§)
         {
            _loc1_ += this.§!h§.§6#Z§ * this.§#"Z§;
            _loc2_ += this.§!h§.§6z§ * this.§#"o§;
            this.§5!T§ = _loc1_ - §4"D§.x;
            this.§ !?§ = _loc2_ - §4"D§.y;
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
         var _loc5_:Number = NaN;
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
            _loc4_ = (_loc3_ - this.§9$1§) * this.§5!T§;
            _loc5_ = (_loc3_ - this.§9$1§) * this.§ !?§;
            this.§9$1§ = _loc3_;
            §4"D§.x += _loc4_;
            §4"D§.y += _loc5_;
         }
      }
   }
}
