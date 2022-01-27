package §2z§
{
   import §0!&§.§!'§;
   import §0!&§.§3!O§;
   import §9!4§.§&l§;
   import §?!R§.§?k§;
   
   public class §6w§
   {
      
      public static const §?^§:Number = 50;
      
      public static var §"8§:Number = 0;
      
      public static const §^!E§:Number = 0.5;
      
      public static const §[!Q§:Number = 0;
       
      
      public var §^+§:Number;
      
      public var §>!L§:Number;
      
      public var §-O§:Number;
      
      public var §<k§:Number;
      
      public var §<3§:Number;
      
      public var §7o§:§2!U§;
      
      public function §6w§(param1:§2!U§, param2:§!'§)
      {
         var _loc5_:§3!O§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§?k§ = null;
         super();
         this.§7o§ = param1;
         this.§^+§ = int.MAX_VALUE;
         this.§>!L§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§+!7§)
         {
            _loc5_ = param2.§[A§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §2!U§.§2!M§ * 4 * §2!U§.§&%§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§^+§)
            {
               this.§^+§ = _loc7_;
            }
            if(_loc8_ > this.§>!L§)
            {
               this.§>!L§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§1!D§)
         {
            if((_loc9_ = param2.§?j§(_loc3_)).x < this.§^+§)
            {
               this.§^+§ = _loc9_.x;
            }
            if(_loc9_.x > this.§>!L§)
            {
               this.§>!L§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §2!U§.§2!M§ * §2!U§.§&%§;
         this.§^+§ -= _loc4_;
         this.§>!L§ += _loc4_;
         this.§<3§ = §2!U§.§2!M§ * §2!U§.§&%§ / (this.§>!L§ - this.§^+§);
         this.§<3§ = Math.max(this.§<3§,§&l§.§;X§);
         this.§<k§ = §[!Q§;
         this.§-O§ = this.§<k§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §<#§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§-O§ || param2 > this.§<k§ + 50 || param1 < this.§^+§ || param1 > this.§>!L§)
         {
            return true;
         }
         return false;
      }
   }
}
