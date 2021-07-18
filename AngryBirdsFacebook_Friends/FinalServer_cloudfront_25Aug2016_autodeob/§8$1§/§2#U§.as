package §8$1§
{
   import §9$§.Sprite;
   import §^§.§>$6§;
   
   public class §2#U§ extends §[!R§
   {
       
      
      private var §`#&§:Number;
      
      private var §5#X§:Boolean;
      
      private var §#!b§:Number;
      
      private var §'2§:int;
      
      private var §1#3§:Number = 0;
      
      private var §1!t§:§`#'§;
      
      private var §]"?§:Number;
      
      public function §2#U§(param1:Sprite, param2:§`#'§, param3:§>$6§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound);
         this.§1!t§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§`#&§ = _loc4_ * 1000;
         this.§]"?§ = param3.scale;
      }
      
      override protected function onStart() : void
      {
         this.§#!b§ = 0;
         this.§5#X§ = this.§]"?§ != this.§1!t§.scale;
         if(this.§5#X§)
         {
            this.§#!b§ = this.§]"?§ - this.§1!t§.scale;
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
            _loc4_ = (_loc3_ - this.§1#3§) * this.§#!b§;
            this.§1#3§ = _loc3_;
            this.§1!t§.scale += _loc4_;
         }
      }
   }
}
