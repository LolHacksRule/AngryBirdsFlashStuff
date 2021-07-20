package §!!P§
{
   import §-<§.§?!N§;
   import §6#H§.Sprite;
   
   public class §;!&§ extends §4"T§
   {
       
      
      private var §,!r§:Number;
      
      private var §7!9§:Number = 0;
      
      private var §-![§:Number = 0;
      
      private var §#!b§:Number = 0;
      
      private var §&#R§:Number = 0;
      
      private var §6"]§:Boolean;
      
      private var §;#$§:Number;
      
      private var §5"s§:Number;
      
      private var §["f§:int;
      
      private var §3!'§:Number = 0;
      
      private var §6#I§:§2#%§;
      
      public function §;!&§(param1:Sprite, param2:§2#%§, param3:§?!N§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§6#I§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§,!r§ = _loc4_ * 1000;
         if(param3.xOffsetPercent && param3.yOffsetPercent)
         {
            this.§7!9§ = param3.xOffsetPercent;
            this.§-![§ = param3.yOffsetPercent;
         }
         else if(param3.movement)
         {
            this.§#!b§ = param3.movement.x;
            this.§&#R§ = param3.movement.y;
         }
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §'#f§.x;
         var _loc2_:Number = §'#f§.y;
         this.§;#$§ = 0;
         this.§5"s§ = 0;
         if(this.§7!9§ != 0 || this.§-![§ != 0)
         {
            this.§6"]§ = true;
            _loc1_ += this.§6#I§.§1">§ * this.§7!9§;
            _loc2_ += this.§6#I§.§,$§ * this.§-![§;
            this.§;#$§ = _loc1_ - §'#f§.x;
            this.§5"s§ = _loc2_ - §'#f§.y;
         }
         else if(this.§#!b§ != 0 || this.§&#R§ != 0)
         {
            this.§6"]§ = true;
            this.§;#$§ = this.§#!b§;
            this.§5"s§ = this.§&#R§;
         }
         if(this.§6"]§)
         {
            this.§["f§ = 0;
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
         var _loc5_:Number = NaN;
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
            _loc4_ = (_loc3_ - this.§3!'§) * this.§;#$§;
            _loc5_ = (_loc3_ - this.§3!'§) * this.§5"s§;
            this.§3!'§ = _loc3_;
            §'#f§.x += _loc4_;
            §'#f§.y += _loc5_;
         }
      }
   }
}
