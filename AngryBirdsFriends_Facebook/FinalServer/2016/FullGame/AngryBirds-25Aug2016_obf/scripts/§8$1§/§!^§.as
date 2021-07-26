package §8$1§
{
   import §9$§.Sprite;
   import §^§.§>$6§;
   
   public class §!^§ extends §[!R§
   {
       
      
      private var §`#&§:Number;
      
      private var §`"C§:Number;
      
      private var §?$5§:Number;
      
      private var §5#X§:Boolean;
      
      private var §9#>§:Number;
      
      private var §!#`§:Number;
      
      private var §'2§:int;
      
      private var §1#3§:Number = 0;
      
      private var §1!t§:§`#'§;
      
      public function §!^§(param1:Sprite, param2:§`#'§, param3:§>$6§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound);
         this.§1!t§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§`#&§ = _loc4_ * 1000;
         this.§`"C§ = param3.xOffsetPercent;
         this.§?$5§ = param3.yOffsetPercent;
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §]Y§.x;
         var _loc2_:Number = §]Y§.y;
         this.§9#>§ = 0;
         this.§!#`§ = 0;
         this.§5#X§ = this.§`"C§ != 0 || this.§?$5§ != 0;
         if(this.§5#X§)
         {
            _loc1_ += this.§1!t§.§!"0§ * this.§`"C§;
            _loc2_ += this.§1!t§.§'_§ * this.§?$5§;
            this.§9#>§ = _loc1_ - §]Y§.x;
            this.§!#`§ = _loc2_ - §]Y§.y;
            this.§'2§ = 0;
         }
      }
      
      private function §7#h§() : void
      {
         §]$8§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§5#X§)
         {
            this.§'2§ += param1;
            if(this.§'2§ >= this.§`#&§)
            {
               this.§5#X§ = false;
            }
            _loc2_ = Math.max(0,this.§'2§);
            _loc2_ = Math.min(_loc2_,this.§`#&§);
            _loc3_ = §-c§(_loc2_,0,1,this.§`#&§);
            _loc4_ = (_loc3_ - this.§1#3§) * this.§9#>§;
            _loc5_ = (_loc3_ - this.§1#3§) * this.§!#`§;
            this.§1#3§ = _loc3_;
            §]Y§.x += _loc4_;
            §]Y§.y += _loc5_;
         }
      }
   }
}
