package §0!2§
{
   import §@-§.§&"!§;
   import §`!n§.§#!s§;
   import §`!n§.§2!z§;
   import §`u§.§5!-§;
   
   public class §#!&§
   {
      
      public static const §>o§:Number = 50;
      
      public static var §]"§:Number = 0;
      
      public static const §&@§:Number = 0.5;
      
      public static const §;!M§:Number = 0;
       
      
      public var §[4§:Number;
      
      public var §1!&§:Number;
      
      public var §7R§:Number;
      
      public var §"p§:Number;
      
      public var §-"B§:Number;
      
      public var §^!"§:§5"L§;
      
      public function §#!&§(param1:§5"L§, param2:§#!s§)
      {
         var _loc5_:§2!z§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§&"!§ = null;
         super();
         this.§^!"§ = param1;
         this.§[4§ = int.MAX_VALUE;
         this.§1!&§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§>Q§)
         {
            _loc5_ = param2.§[!&§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §5"L§.§9"D§ * 4 * §5"L§.§@>§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§[4§)
            {
               this.§[4§ = _loc7_;
            }
            if(_loc8_ > this.§1!&§)
            {
               this.§1!&§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§8"'§)
         {
            if((_loc9_ = param2.§ §(_loc3_)).x < this.§[4§)
            {
               this.§[4§ = _loc9_.x;
            }
            if(_loc9_.x > this.§1!&§)
            {
               this.§1!&§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §5"L§.§9"D§ * §5"L§.§@>§;
         this.§[4§ -= _loc4_;
         this.§1!&§ += _loc4_;
         this.§-"B§ = §5"L§.§9"D§ * §5"L§.§@>§ / (this.§1!&§ - this.§[4§);
         this.§-"B§ = Math.max(this.§-"B§,§5!-§.§&"%§);
         this.§"p§ = §;!M§;
         this.§7R§ = this.§"p§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §<!c§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§7R§ || param2 > this.§"p§ + 50 || param1 < this.§[4§ || param1 > this.§1!&§)
         {
            return true;
         }
         return false;
      }
   }
}
