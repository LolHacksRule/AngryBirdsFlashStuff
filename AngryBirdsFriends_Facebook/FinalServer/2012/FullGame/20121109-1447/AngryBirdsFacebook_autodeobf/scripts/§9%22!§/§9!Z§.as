package §9"!§
{
   import §#!e§.§1"B§;
   import §#!e§.§2!L§;
   import §8g§.§3"6§;
   import §[!"§.§&0§;
   
   public class §9!Z§
   {
      
      public static const §5"$§:Number = 50;
      
      public static var §,"&§:Number = 0;
      
      public static const §,"3§:Number = 0.5;
      
      public static const §6§:Number = 0;
       
      
      public var §7T§:Number;
      
      public var §3!5§:Number;
      
      public var §^!1§:Number;
      
      public var §'I§:Number;
      
      public var §=!I§:Number;
      
      public var §@O§:§9"3§;
      
      public function §9!Z§(param1:§9"3§, param2:§1"B§)
      {
         var _loc5_:§2!L§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§3"6§ = null;
         super();
         this.§@O§ = param1;
         this.§7T§ = int.MAX_VALUE;
         this.§3!5§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§6X§)
         {
            _loc5_ = param2.§[W§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §9"3§.§=k§ * 4 * §9"3§.§'"F§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§7T§)
            {
               this.§7T§ = _loc7_;
            }
            if(_loc8_ > this.§3!5§)
            {
               this.§3!5§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§-!e§)
         {
            if((_loc9_ = param2.§!!A§(_loc3_)).x < this.§7T§)
            {
               this.§7T§ = _loc9_.x;
            }
            if(_loc9_.x > this.§3!5§)
            {
               this.§3!5§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §9"3§.§=k§ * §9"3§.§'"F§;
         this.§7T§ -= _loc4_;
         this.§3!5§ += _loc4_;
         this.§=!I§ = §9"3§.§=k§ * §9"3§.§'"F§ / (this.§3!5§ - this.§7T§);
         this.§=!I§ = Math.max(this.§=!I§,§&0§.§@t§);
         this.§'I§ = §6§;
         this.§^!1§ = this.§'I§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §#!=§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§^!1§ || param2 > this.§'I§ + 50 || param1 < this.§7T§ || param1 > this.§3!5§)
         {
            return true;
         }
         return false;
      }
   }
}
