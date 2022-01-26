package §"!I§
{
   import § "§.§5!N§;
   import §9!4§.§95§;
   import §^!5§.§&!E§;
   import §^!5§.§&m§;
   
   public class §`@§
   {
      
      public static const §>!`§:Number = 50;
      
      public static var §0Q§:Number = 0;
      
      public static const §-u§:Number = 0.5;
      
      public static const §+!a§:Number = 0;
       
      
      public var §88§:Number;
      
      public var §>9§:Number;
      
      public var §8K§:Number;
      
      public var §"N§:Number;
      
      public var §6!'§:Number;
      
      public var §=!V§:§^!2§;
      
      public function §`@§(param1:§^!2§, param2:§&!E§)
      {
         var _loc5_:§&m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5!N§ = null;
         super();
         this.§=!V§ = param1;
         this.§88§ = int.MAX_VALUE;
         this.§>9§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§7D§)
         {
            _loc5_ = param2.§`b§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^!2§.§@!@§ * 4 * §^!2§.§3!S§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§88§)
            {
               this.§88§ = _loc7_;
            }
            if(_loc8_ > this.§>9§)
            {
               this.§>9§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8!3§)
         {
            if((_loc9_ = param2.§@r§(_loc3_)).x < this.§88§)
            {
               this.§88§ = _loc9_.x;
            }
            if(_loc9_.x > this.§>9§)
            {
               this.§>9§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^!2§.§@!@§ * §^!2§.§3!S§;
         this.§88§ -= _loc4_;
         this.§>9§ += _loc4_;
         this.§6!'§ = §^!2§.§@!@§ * §^!2§.§3!S§ / (this.§>9§ - this.§88§);
         this.§6!'§ = Math.max(this.§6!'§,§95§.§2_§);
         this.§"N§ = §+!a§;
         this.§8K§ = this.§"N§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §switch§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§8K§ || param2 > this.§"N§ + 50 || param1 < this.§88§ || param1 > this.§>9§)
         {
            return true;
         }
         return false;
      }
   }
}
