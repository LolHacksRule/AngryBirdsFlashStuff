package § d§
{
   import §8! §.§1_§;
   import §8! §.§^!F§;
   import §@!"§.§'!^§;
   import §@!H§.§-f§;
   
   public class §+=§
   {
      
      public static const §%!M§:Number = 50;
      
      public static var §2j§:Number = 0;
      
      public static const §"!4§:Number = 0.5;
      
      public static const §2!^§:Number = 0;
       
      
      public var §]!K§:Number;
      
      public var §;?§:Number;
      
      public var §#!b§:Number;
      
      public var §9%§:Number;
      
      public var §?!2§:Number;
      
      public var §"2§:§'!"§;
      
      public function §+=§(param1:§'!"§, param2:§1_§)
      {
         var _loc5_:§^!F§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§'!^§ = null;
         super();
         this.§"2§ = param1;
         this.§]!K§ = int.MAX_VALUE;
         this.§;?§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§4!X§)
         {
            _loc5_ = param2.§!B§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §'!"§.§5!;§ * 4 * §'!"§.§#3§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]!K§)
            {
               this.§]!K§ = _loc7_;
            }
            if(_loc8_ > this.§;?§)
            {
               this.§;?§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§@L§)
         {
            if((_loc9_ = param2.§<Q§(_loc3_)).x < this.§]!K§)
            {
               this.§]!K§ = _loc9_.x;
            }
            if(_loc9_.x > this.§;?§)
            {
               this.§;?§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §'!"§.§5!;§ * §'!"§.§#3§;
         this.§]!K§ -= _loc4_;
         this.§;?§ += _loc4_;
         this.§?!2§ = §'!"§.§5!;§ * §'!"§.§#3§ / (this.§;?§ - this.§]!K§);
         this.§?!2§ = Math.max(this.§?!2§,§-f§.§&!9§);
         this.§9%§ = §2!^§;
         this.§#!b§ = this.§9%§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §0u§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§#!b§ || param2 > this.§9%§ + 50 || param1 < this.§]!K§ || param1 > this.§;?§)
         {
            return true;
         }
         return false;
      }
   }
}
