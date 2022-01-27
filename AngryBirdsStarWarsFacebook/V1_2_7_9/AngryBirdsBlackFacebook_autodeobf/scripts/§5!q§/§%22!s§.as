package §5!q§
{
   import §,#+§.§6G§;
   import §,#+§.§<U§;
   import §4"F§.§^d§;
   import §5i§.§+M§;
   
   public class §"!s§
   {
      
      public static const §&#+§:Number = 50;
      
      public static const §6"M§:Number = 0;
       
      
      protected var §]!M§:Number;
      
      protected var §]+§:Number;
      
      protected var §0!o§:Number;
      
      protected var §,"E§:Number;
      
      public var §<"<§:Number;
      
      public var §]""§:§3"X§;
      
      public function §"!s§(param1:§3"X§, param2:§<U§)
      {
         var _loc5_:§6G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§^d§ = null;
         super();
         this.§]""§ = param1;
         this.§]!M§ = int.MAX_VALUE;
         this.§]+§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§`!>§)
         {
            _loc5_ = param2.§8! §(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §3"X§.§6"t§ * 4 * §3"X§.§;"l§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]!M§)
            {
               this.§]!M§ = _loc7_;
            }
            if(_loc8_ > this.§]+§)
            {
               this.§]+§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§]!M§)
            {
               this.§]!M§ = _loc9_.x;
            }
            if(_loc9_.x > this.§]+§)
            {
               this.§]+§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §3"X§.§6"t§ * §3"X§.§;"l§;
         this.§]!M§ -= _loc4_;
         this.§]+§ += _loc4_;
         this.§<"<§ = §3"X§.§6"t§ * §3"X§.§;"l§ / (this.§]+§ - this.§]!M§);
         this.§<"<§ = Math.max(this.§<"<§,§+M§.§3"f§);
         this.§0!o§ = param2.slingshotY - 160;
         this.§,"E§ = param2.slingshotY + 160;
      }
      
      public function get §-A§() : Number
      {
         return this.§]!M§;
      }
      
      public function get §^!u§() : Number
      {
         return this.§]+§;
      }
      
      public function get §8!2§() : Number
      {
         return this.§0!o§;
      }
      
      public function get §-b§() : Number
      {
         return this.§,"E§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §?!=§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§0!o§ || param2 > this.§,"E§ || param1 < this.§]!M§ || param1 > this.§]+§)
         {
            return true;
         }
         return false;
      }
   }
}
