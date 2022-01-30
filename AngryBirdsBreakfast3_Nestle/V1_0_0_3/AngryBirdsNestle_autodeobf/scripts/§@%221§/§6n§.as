package §@"1§
{
   import §'w§.§ !7§;
   import §<!A§.§false§;
   import §>!a§.§-?§;
   import §>!a§.§0!t§;
   
   public class §6n§
   {
      
      public static const §0!"§:Number = 50;
      
      public static const §2L§:Number = 0;
       
      
      protected var §]?§:Number;
      
      protected var §7!-§:Number;
      
      protected var §-!@§:Number;
      
      protected var §&"'§:Number;
      
      public var §%!c§:Number;
      
      public var §`W§:§"h§;
      
      public function §6n§(param1:§"h§, param2:§-?§)
      {
         var _loc5_:§0!t§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§false§ = null;
         super();
         this.§`W§ = param1;
         this.§]?§ = int.MAX_VALUE;
         this.§7!-§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§""#§)
         {
            _loc5_ = param2.§4![§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §"h§.§[!C§ * 4 * §"h§.§4<§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]?§)
            {
               this.§]?§ = _loc7_;
            }
            if(_loc8_ > this.§7!-§)
            {
               this.§7!-§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§]?§)
            {
               this.§]?§ = _loc9_.x;
            }
            if(_loc9_.x > this.§7!-§)
            {
               this.§7!-§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §"h§.§[!C§ * §"h§.§4<§;
         this.§]?§ -= _loc4_;
         this.§7!-§ += _loc4_;
         this.§%!c§ = §"h§.§[!C§ * §"h§.§4<§ / (this.§7!-§ - this.§]?§);
         this.§%!c§ = Math.max(this.§%!c§,§ !7§.§&4§);
         this.§-!@§ = param2.slingshotY - 160;
         this.§&"'§ = param2.slingshotY + 160;
      }
      
      public function get §>t§() : Number
      {
         return this.§]?§;
      }
      
      public function get §-!"§() : Number
      {
         return this.§7!-§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §<!`§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§-!@§ || param2 > this.§&"'§ || param1 < this.§]?§ || param1 > this.§7!-§)
         {
            return true;
         }
         return false;
      }
   }
}
