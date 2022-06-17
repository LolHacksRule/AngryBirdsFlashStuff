package §8"h§
{
   import §#!S§.§^!5§;
   import §#Z§.Sprite;
   
   public class §4"w§ extends §]#H§
   {
       
      
      private var §'">§:Number;
      
      private var §!$?§:Number = 0;
      
      private var §`R§:Number = 0;
      
      private var §=$;§:Number = 0;
      
      private var §-$<§:Number = 0;
      
      private var §'#v§:Boolean;
      
      private var §9F§:Number;
      
      private var §>#v§:Number;
      
      private var §-!k§:int;
      
      private var §5!q§:Number = 0;
      
      private var §=!6§:§`#s§;
      
      public function §4"w§(param1:Sprite, param2:§`#s§, param3:§^!5§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§=!6§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§'">§ = _loc4_ * 1000;
         if(param3.xOffsetPercent && param3.yOffsetPercent)
         {
            this.§!$?§ = param3.xOffsetPercent;
            this.§`R§ = param3.yOffsetPercent;
         }
         else if(param3.movement)
         {
            this.§=$;§ = param3.movement.x;
            this.§-$<§ = param3.movement.y;
         }
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §]#+§.x;
         var _loc2_:Number = §]#+§.y;
         this.§9F§ = 0;
         this.§>#v§ = 0;
         if(this.§!$?§ != 0 || this.§`R§ != 0)
         {
            this.§'#v§ = true;
            _loc1_ += this.§=!6§.§-!]§ * this.§!$?§;
            _loc2_ += this.§=!6§.§'!l§ * this.§`R§;
            this.§9F§ = _loc1_ - §]#+§.x;
            this.§>#v§ = _loc2_ - §]#+§.y;
         }
         else if(this.§=$;§ != 0 || this.§-$<§ != 0)
         {
            this.§'#v§ = true;
            this.§9F§ = this.§=$;§;
            this.§>#v§ = this.§-$<§;
         }
         if(this.§'#v§)
         {
            this.§-!k§ = 0;
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
         var _loc5_:Number = NaN;
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
            _loc4_ = (_loc3_ - this.§5!q§) * this.§9F§;
            _loc5_ = (_loc3_ - this.§5!q§) * this.§>#v§;
            this.§5!q§ = _loc3_;
            §]#+§.x += _loc4_;
            §]#+§.y += _loc5_;
         }
      }
   }
}
