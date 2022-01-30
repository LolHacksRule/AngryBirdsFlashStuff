package §%h§
{
   import §&"+§.§>@§;
   import §'!O§.§+!V§;
   import §'!O§.§@!l§;
   import §>0§.§'L§;
   
   public class §"l§
   {
      
      public static const §%F§:Number = 50;
      
      public static var §^!!§:Number = 0;
      
      public static const §;!3§:Number = 0.5;
      
      public static const §#!i§:Number = 0;
       
      
      public var § !<§:Number;
      
      public var §`I§:Number;
      
      public var §'u§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §=!D§:Number;
      
      public var §>"2§:§5X§;
      
      public function §"l§(param1:§5X§, param2:§@!l§)
      {
         var _loc5_:§+!V§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§>@§ = null;
         super();
         this.§>"2§ = param1;
         this.§ !<§ = int.MAX_VALUE;
         this.§`I§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§#""§)
         {
            _loc5_ = param2.§2l§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §5X§.§5"'§ * 4 * §5X§.§,!m§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§ !<§)
            {
               this.§ !<§ = _loc7_;
            }
            if(_loc8_ > this.§`I§)
            {
               this.§`I§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§%!D§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§ !<§)
            {
               this.§ !<§ = _loc9_.x;
            }
            if(_loc9_.x > this.§`I§)
            {
               this.§`I§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §5X§.§5"'§ * §5X§.§,!m§;
         this.§ !<§ -= _loc4_;
         this.§`I§ += _loc4_;
         this.§=!D§ = §5X§.§5"'§ * §5X§.§,!m§ / (this.§`I§ - this.§ !<§);
         this.§=!D§ = Math.max(this.§=!D§,§'L§.§ H§);
         this.mBorderGround_B2 = §#!i§;
         this.§'u§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §8!q§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§'u§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§ !<§ || param1 > this.§`I§)
         {
            return true;
         }
         return false;
      }
   }
}
