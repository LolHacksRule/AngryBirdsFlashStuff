package §9T§
{
   import §=!,§.§9![§;
   import §>!H§.§^!<§;
   import §^9§.§!K§;
   import §^9§.§3A§;
   
   public class §,S§
   {
      
      public static const §2!6§:Number = 50;
      
      public static var §>2§:Number = 0;
      
      public static const §@!D§:Number = 0.5;
      
      public static const §=K§:Number = 0;
       
      
      public var §'M§:Number;
      
      public var §9c§:Number;
      
      public var §>!<§:Number;
      
      public var §?!$§:Number;
      
      public var §;q§:Number;
      
      public var §&?§:§=!^§;
      
      public function §,S§(param1:§=!^§, param2:§3A§)
      {
         var _loc5_:§!K§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§^!<§ = null;
         super();
         this.§&?§ = param1;
         this.§'M§ = int.MAX_VALUE;
         this.§9c§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§7!W§)
         {
            _loc5_ = param2.§<L§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §=!^§.§@3§ * 4 * §=!^§.§4#§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§'M§)
            {
               this.§'M§ = _loc7_;
            }
            if(_loc8_ > this.§9c§)
            {
               this.§9c§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§3!N§)
         {
            if((_loc9_ = param2.§+D§(_loc3_)).x < this.§'M§)
            {
               this.§'M§ = _loc9_.x;
            }
            if(_loc9_.x > this.§9c§)
            {
               this.§9c§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §=!^§.§@3§ * §=!^§.§4#§;
         this.§'M§ -= _loc4_;
         this.§9c§ += _loc4_;
         this.§;q§ = §=!^§.§@3§ * §=!^§.§4#§ / (this.§9c§ - this.§'M§);
         this.§;q§ = Math.max(this.§;q§,§9![§.§8Q§);
         this.§?!$§ = §=K§;
         this.§>!<§ = this.§?!$§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §;i§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§>!<§ || param2 > this.§?!$§ + 50 || param1 < this.§'M§ || param1 > this.§9c§)
         {
            return true;
         }
         return false;
      }
   }
}
