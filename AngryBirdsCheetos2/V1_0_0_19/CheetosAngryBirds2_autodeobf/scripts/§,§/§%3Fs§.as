package §,§
{
   import §,!K§.§[V§;
   import §;A§.§]!A§;
   import §`![§.§!!K§;
   import §`![§.§5!b§;
   
   public class §?s§
   {
      
      public static const §<!!§:Number = 50;
      
      public static var §!!V§:Number = 0;
      
      public static const §<!+§:Number = 0.5;
      
      public static const §7!9§:Number = 0;
       
      
      public var §;8§:Number;
      
      public var §^!T§:Number;
      
      public var §5!C§:Number;
      
      public var §-S§:Number;
      
      public var §4G§:Number;
      
      public var §^!I§:§ p§;
      
      public function §?s§(param1:§ p§, param2:§!!K§)
      {
         var _loc5_:§5!b§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]!A§ = null;
         super();
         this.§^!I§ = param1;
         this.§;8§ = int.MAX_VALUE;
         this.§^!T§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§+![§)
         {
            _loc5_ = param2.§-3§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = § p§.§=j§ * 4 * § p§.§]!E§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§;8§)
            {
               this.§;8§ = _loc7_;
            }
            if(_loc8_ > this.§^!T§)
            {
               this.§^!T§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§@!_§)
         {
            if((_loc9_ = param2.§0;§(_loc3_)).x < this.§;8§)
            {
               this.§;8§ = _loc9_.x;
            }
            if(_loc9_.x > this.§^!T§)
            {
               this.§^!T§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * § p§.§=j§ * § p§.§]!E§;
         this.§;8§ -= _loc4_;
         this.§^!T§ += _loc4_;
         this.§4G§ = § p§.§=j§ * § p§.§]!E§ / (this.§^!T§ - this.§;8§);
         this.§4G§ = Math.max(this.§4G§,§[V§.§-!F§);
         this.§-S§ = §7!9§;
         this.§5!C§ = this.§-S§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §`!H§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§5!C§ || param2 > this.§-S§ + 50 || param1 < this.§;8§ || param1 > this.§^!T§)
         {
            return true;
         }
         return false;
      }
   }
}
