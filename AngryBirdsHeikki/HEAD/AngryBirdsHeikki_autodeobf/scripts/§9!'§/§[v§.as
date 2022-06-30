package §9!'§
{
   import § ![§.§#!B§;
   import §7e§.§8!P§;
   import §7e§.§;!8§;
   import §^!"§.§ >§;
   
   public class §[v§
   {
      
      public static const §-!P§:Number = 50;
      
      public static var §?!]§:Number = 0;
      
      public static const §9!V§:Number = 0.5;
      
      public static const §`!3§:Number = 0;
       
      
      public var §<s§:Number;
      
      public var §;!T§:Number;
      
      public var §7a§:Number;
      
      public var §3m§:Number;
      
      public var §"I§:Number;
      
      public var §]B§:§0!%§;
      
      public function §[v§(param1:§0!%§, param2:§8!P§)
      {
         var _loc5_:§;!8§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§ >§ = null;
         super();
         this.§]B§ = param1;
         this.§<s§ = int.MAX_VALUE;
         this.§;!T§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§^!>§)
         {
            _loc5_ = param2.§-h§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §0!%§.§5C§ * 4 * §0!%§.§"m§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§<s§)
            {
               this.§<s§ = _loc7_;
            }
            if(_loc8_ > this.§;!T§)
            {
               this.§;!T§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§+b§)
         {
            if((_loc9_ = param2.§]I§(_loc3_)).x < this.§<s§)
            {
               this.§<s§ = _loc9_.x;
            }
            if(_loc9_.x > this.§;!T§)
            {
               this.§;!T§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §0!%§.§5C§ * §0!%§.§"m§;
         this.§<s§ -= _loc4_;
         this.§;!T§ += _loc4_;
         this.§"I§ = §0!%§.§5C§ * §0!%§.§"m§ / (this.§;!T§ - this.§<s§);
         this.§"I§ = Math.max(this.§"I§,§#!B§.§;T§);
         this.§3m§ = §`!3§;
         this.§7a§ = this.§3m§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §?!S§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§7a§ || param2 > this.§3m§ + 50 || param1 < this.§<s§ || param1 > this.§;!T§)
         {
            return true;
         }
         return false;
      }
   }
}
