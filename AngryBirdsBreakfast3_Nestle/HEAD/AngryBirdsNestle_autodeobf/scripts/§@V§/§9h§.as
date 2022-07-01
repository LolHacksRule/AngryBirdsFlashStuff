package §@V§
{
   import §#!I§.§0k§;
   import §%!B§.§5L§;
   import §%!B§.§9"2§;
   import §0N§.§,!A§;
   
   public class §9h§
   {
      
      public static const §3" §:Number = 50;
      
      public static const §3!?§:Number = 0;
       
      
      protected var §^@§:Number;
      
      protected var §?",§:Number;
      
      protected var §=!3§:Number;
      
      protected var §'!V§:Number;
      
      public var §8K§:Number;
      
      public var §!`§:§#=§;
      
      public function §9h§(param1:§#=§, param2:§5L§)
      {
         var _loc5_:§9"2§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§,!A§ = null;
         super();
         this.§!`§ = param1;
         this.§^@§ = int.MAX_VALUE;
         this.§?",§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§5!i§)
         {
            _loc5_ = param2.§@"!§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §#=§.§5B§ * 4 * §#=§.§^!2§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§^@§)
            {
               this.§^@§ = _loc7_;
            }
            if(_loc8_ > this.§?",§)
            {
               this.§?",§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.objectCount)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§^@§)
            {
               this.§^@§ = _loc9_.x;
            }
            if(_loc9_.x > this.§?",§)
            {
               this.§?",§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §#=§.§5B§ * §#=§.§^!2§;
         this.§^@§ -= _loc4_;
         this.§?",§ += _loc4_;
         this.§8K§ = §#=§.§5B§ * §#=§.§^!2§ / (this.§?",§ - this.§^@§);
         this.§8K§ = Math.max(this.§8K§,§0k§.§;y§);
         this.§=!3§ = param2.slingshotY - 160;
         this.§'!V§ = param2.slingshotY + 160;
      }
      
      public function get §]6§() : Number
      {
         return this.§^@§;
      }
      
      public function get §const§() : Number
      {
         return this.§?",§;
      }
      
      public function get §&C§() : Number
      {
         return this.§=!3§;
      }
      
      public function get §'1§() : Number
      {
         return this.§'!V§;
      }
      
      public function get ground() : Number
      {
         return 0;
      }
      
      public function clear() : void
      {
      }
      
      public function §]!^§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§=!3§ || param2 > this.§'!V§ || param1 < this.§^@§ || param1 > this.§?",§)
         {
            return true;
         }
         return false;
      }
   }
}
