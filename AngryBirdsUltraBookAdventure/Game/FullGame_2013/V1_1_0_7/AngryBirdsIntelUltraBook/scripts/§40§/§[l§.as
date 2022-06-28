package §40§
{
   import §"!i§.§"!'§;
   import §"!i§.§8z§;
   import §5<§.§<n§;
   import §`!M§.§%X§;
   
   public class §[l§
   {
      
      public static const §2J§:Number = 50;
      
      public static var §5!5§:Number = 0;
      
      public static const §6"#§:Number = 0.5;
      
      public static const §in §:Number = 0;
       
      
      public var §;S§:Number;
      
      public var §8W§:Number;
      
      public var §#p§:Number;
      
      public var §]!L§:Number;
      
      public var §!! §:Number;
      
      public var §#!U§:§5G§;
      
      public function §[l§(param1:§5G§, param2:§"!'§)
      {
         var _loc5_:§8z§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§<n§ = null;
         super();
         this.§#!U§ = param1;
         this.§;S§ = int.MAX_VALUE;
         this.§8W§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§?!M§)
         {
            _loc5_ = param2.§#M§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §5G§.§&!d§ * 4 * §5G§.§6+§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§;S§)
            {
               this.§;S§ = _loc7_;
            }
            if(_loc8_ > this.§8W§)
            {
               this.§8W§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§^!b§)
         {
            if((_loc9_ = param2.§ !X§(_loc3_)).x < this.§;S§)
            {
               this.§;S§ = _loc9_.x;
            }
            if(_loc9_.x > this.§8W§)
            {
               this.§8W§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §5G§.§&!d§ * §5G§.§6+§;
         this.§;S§ -= _loc4_;
         this.§8W§ += _loc4_;
         this.§!! § = §5G§.§&!d§ * §5G§.§6+§ / (this.§8W§ - this.§;S§);
         this.§!! § = Math.max(this.§!! §,§%X§.§%!T§);
         this.§]!L§ = §in §;
         this.§#p§ = this.§]!L§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §2!d§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§#p§ || param2 > this.§]!L§ + 50 || param1 < this.§;S§ || param1 > this.§8W§)
         {
            return true;
         }
         return false;
      }
   }
}
