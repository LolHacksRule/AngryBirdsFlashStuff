package §'4§
{
   import §9!w§.§9!,§;
   import §@w§.§`a§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   
   public class §86§
   {
      
      public static const §+[§:Number = 50;
      
      public static const § !y§:Number = 0;
       
      
      protected var §[";§:Number;
      
      protected var §'"C§:Number;
      
      protected var §`!B§:Number;
      
      protected var § !c§:Number;
      
      public var §7!9§:Number;
      
      public var §?>§:§^g§;
      
      public function §86§(param1:§^g§, param2:§#b§)
      {
         var _loc5_:§1U§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§`a§ = null;
         super();
         this.§?>§ = param1;
         this.§[";§ = int.MAX_VALUE;
         this.§'"C§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§'!Y§)
         {
            _loc5_ = param2.§>2§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §^g§.§6!9§ * 4 * §^g§.§5!-§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§[";§)
            {
               this.§[";§ = _loc7_;
            }
            if(_loc8_ > this.§'"C§)
            {
               this.§'"C§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§[";§)
            {
               this.§[";§ = _loc9_.x;
            }
            if(_loc9_.x > this.§'"C§)
            {
               this.§'"C§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §^g§.§6!9§ * §^g§.§5!-§;
         this.§[";§ -= _loc4_;
         this.§'"C§ += _loc4_;
         this.§7!9§ = §^g§.§6!9§ * §^g§.§5!-§ / (this.§'"C§ - this.§[";§);
         this.§7!9§ = Math.max(this.§7!9§,§9!,§.§"j§);
         this.§`!B§ = param2.slingshotY - 160;
         this.§ !c§ = param2.slingshotY + 160;
      }
      
      public function get §[v§() : Number
      {
         return this.§[";§;
      }
      
      public function get §;"+§() : Number
      {
         return this.§'"C§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §!'§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§`!B§ || param2 > this.§ !c§ || param1 < this.§[";§ || param1 > this.§'"C§)
         {
            return true;
         }
         return false;
      }
   }
}
