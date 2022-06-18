package §]#m§
{
   import §&!v§.Sprite;
   import §6!6§.§@"W§;
   
   public class §?"H§ extends § "!§
   {
       
      
      private var §0!O§:Number;
      
      private var §;"J§:Number;
      
      private var §#!Y§:Number;
      
      private var §>"`§:Boolean;
      
      private var §?#-§:Number;
      
      private var §1!W§:Number;
      
      private var §-#l§:int;
      
      private var §4j§:Number = 0;
      
      private var §3$<§:§<#A§;
      
      public function §?"H§(param1:Sprite, param2:§<#A§, param3:§@"W§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound);
         this.§3$<§ = param2;
         var _loc4_:Number = param3.duration < 0 ? Number(0) : Number(param3.duration);
         this.§0!O§ = _loc4_ * 1000;
         this.§;"J§ = param3.xOffsetPercent;
         this.§#!Y§ = param3.yOffsetPercent;
      }
      
      override protected function onStart() : void
      {
         var _loc1_:Number = §'$&§.x;
         var _loc2_:Number = §'$&§.y;
         this.§?#-§ = 0;
         this.§1!W§ = 0;
         this.§>"`§ = this.§;"J§ != 0 || this.§#!Y§ != 0;
         if(this.§>"`§)
         {
            _loc1_ += this.§3$<§.§?!w§ * this.§;"J§;
            _loc2_ += this.§3$<§.§0!]§ * this.§#!Y§;
            this.§?#-§ = _loc1_ - §'$&§.x;
            this.§1!W§ = _loc2_ - §'$&§.y;
            this.§-#l§ = 0;
         }
      }
      
      private function §8#@§() : void
      {
         §3"-§();
      }
      
      override protected function onUpdate(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>"`§)
         {
            this.§-#l§ += param1;
            if(this.§-#l§ >= this.§0!O§)
            {
               this.§>"`§ = false;
            }
            _loc2_ = Math.max(0,this.§-#l§);
            _loc2_ = Math.min(_loc2_,this.§0!O§);
            _loc3_ = §>"n§(_loc2_,0,1,this.§0!O§);
            _loc4_ = (_loc3_ - this.§4j§) * this.§?#-§;
            _loc5_ = (_loc3_ - this.§4j§) * this.§1!W§;
            this.§4j§ = _loc3_;
            §'$&§.x += _loc4_;
            §'$&§.y += _loc5_;
         }
      }
   }
}
