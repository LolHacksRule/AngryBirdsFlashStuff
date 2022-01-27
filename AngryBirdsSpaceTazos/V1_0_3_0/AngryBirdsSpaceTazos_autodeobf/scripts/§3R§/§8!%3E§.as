package §3R§
{
   import §&!3§.§0!W§;
   import §4",§.§3v§;
   import §4",§.§8"6§;
   import §5!<§.§5!l§;
   
   public class §8!>§
   {
      
      public static const §,"?§:Number = 50;
      
      public static const § !n§:Number = 0;
       
      
      protected var §@P§:Number;
      
      protected var §?!&§:Number;
      
      protected var §!"@§:Number;
      
      protected var §!7§:Number;
      
      public var §>l§:Number;
      
      public var §;H§:§1!R§;
      
      public function §8!>§(param1:§1!R§, param2:§3v§)
      {
         var _loc5_:§8"6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§5!l§ = null;
         super();
         this.§;H§ = param1;
         this.§@P§ = int.MAX_VALUE;
         this.§?!&§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§#!I§)
         {
            _loc5_ = param2.§&$§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §1!R§.§'!v§ * 4 * §1!R§.§00§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§@P§)
            {
               this.§@P§ = _loc7_;
            }
            if(_loc8_ > this.§?!&§)
            {
               this.§?!&§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§@P§)
            {
               this.§@P§ = _loc9_.x;
            }
            if(_loc9_.x > this.§?!&§)
            {
               this.§?!&§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §1!R§.§'!v§ * §1!R§.§00§;
         this.§@P§ -= _loc4_;
         this.§?!&§ += _loc4_;
         this.§>l§ = §1!R§.§'!v§ * §1!R§.§00§ / (this.§?!&§ - this.§@P§);
         this.§>l§ = Math.max(this.§>l§,§0!W§.§9!r§);
         this.§!"@§ = param2.slingshotY - 160;
         this.§!7§ = param2.slingshotY + 160;
      }
      
      public function get §;[§() : Number
      {
         return this.§@P§;
      }
      
      public function get §2!O§() : Number
      {
         return this.§?!&§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §!T§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§!"@§ || param2 > this.§!7§ || param1 < this.§@P§ || param1 > this.§?!&§)
         {
            return true;
         }
         return false;
      }
   }
}
