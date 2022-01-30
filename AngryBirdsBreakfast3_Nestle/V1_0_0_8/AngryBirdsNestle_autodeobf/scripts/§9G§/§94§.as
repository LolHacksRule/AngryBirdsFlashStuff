package §9G§
{
   import §0"1§.§#,§;
   import §8!e§.§ !z§;
   import §8!e§.§!!E§;
   import §^!<§.§#t§;
   
   public class §94§
   {
      
      public static const §"!K§:Number = 50;
      
      public static const §6!x§:Number = 0;
       
      
      protected var §@!5§:Number;
      
      protected var §]"0§:Number;
      
      protected var §0!h§:Number;
      
      protected var §[!K§:Number;
      
      public var §4!7§:Number;
      
      public var §5M§:§2F§;
      
      public function §94§(param1:§2F§, param2:§!!E§)
      {
         var _loc5_:§ !z§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§#,§ = null;
         super();
         this.§5M§ = param1;
         this.§@!5§ = int.MAX_VALUE;
         this.§]"0§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8!@§)
         {
            _loc5_ = param2.§[!X§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §2F§.§&",§ * 4 * §2F§.§6+§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§@!5§)
            {
               this.§@!5§ = _loc7_;
            }
            if(_loc8_ > this.§]"0§)
            {
               this.§]"0§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§@!5§)
            {
               this.§@!5§ = _loc9_.x;
            }
            if(_loc9_.x > this.§]"0§)
            {
               this.§]"0§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §2F§.§&",§ * §2F§.§6+§;
         this.§@!5§ -= _loc4_;
         this.§]"0§ += _loc4_;
         this.§4!7§ = §2F§.§&",§ * §2F§.§6+§ / (this.§]"0§ - this.§@!5§);
         this.§4!7§ = Math.max(this.§4!7§,§#t§.§+"5§);
         this.§0!h§ = param2.slingshotY - 160;
         this.§[!K§ = param2.slingshotY + 160;
      }
      
      public function get §'b§() : Number
      {
         return this.§@!5§;
      }
      
      public function get §&![§() : Number
      {
         return this.§]"0§;
      }
      
      public function get §!!f§() : Number
      {
         return this.§0!h§;
      }
      
      public function get §?"!§() : Number
      {
         return this.§[!K§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §?Q§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0!h§ || param2 > this.§[!K§ || param1 < this.§@!5§ || param1 > this.§]"0§)
         {
            return true;
         }
         return false;
      }
   }
}
