package §@#b§
{
   import §,#e§.Sprite;
   import §4"Y§.§'#x§;
   
   public class §0"&§ extends §6$,§
   {
       
      
      private var §%"T§:Number;
      
      private var §0!-§:Number = 0;
      
      private var §]#2§:Number = 0;
      
      private var §,!2§:Number = 0;
      
      private var §@"P§:Number = 0;
      
      private var §;!E§:Boolean;
      
      private var §!#B§:Number;
      
      private var §1#J§:Number;
      
      private var §9"h§:int;
      
      private var §8n§:Number = 0;
      
      private var §`t§:§=$;§;
      
      public function §0"&§(param1:Sprite, param2:§=$;§, param3:§'#x§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§`t§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§%"T§ = _loc4_ * 1000;
         if(param3.xOffsetPercent && param3.yOffsetPercent)
         {
            this.§0!-§ = param3.xOffsetPercent;
            this.§]#2§ = param3.yOffsetPercent;
         }
         else if(param3.movement)
         {
            this.§,!2§ = param3.movement.x;
            this.§@"P§ = param3.movement.y;
         }
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §&"h§.x;
         var _loc2_:Number = §&"h§.y;
         this.§!#B§ = 0;
         this.§1#J§ = 0;
         if(this.§0!-§ != 0 || this.§]#2§ != 0)
         {
            this.§;!E§ = true;
            _loc1_ += this.§`t§.§=b§ * this.§0!-§;
            _loc2_ += this.§`t§.§[!]§ * this.§]#2§;
            this.§!#B§ = _loc1_ - §&"h§.x;
            this.§1#J§ = _loc2_ - §&"h§.y;
         }
         else if(this.§,!2§ != 0 || this.§@"P§ != 0)
         {
            this.§;!E§ = true;
            this.§!#B§ = this.§,!2§;
            this.§1#J§ = this.§@"P§;
         }
         if(this.§;!E§)
         {
            this.§9"h§ = 0;
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
         var _loc5_:Number = NaN;
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
            _loc4_ = (_loc3_ - this.§8n§) * this.§!#B§;
            _loc5_ = (_loc3_ - this.§8n§) * this.§1#J§;
            this.§8n§ = _loc3_;
            §&"h§.x += _loc4_;
            §&"h§.y += _loc5_;
         }
      }
   }
}
