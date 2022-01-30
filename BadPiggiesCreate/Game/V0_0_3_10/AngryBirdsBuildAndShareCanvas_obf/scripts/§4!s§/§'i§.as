package §4!s§
{
   import §%!I§.§,!3§;
   import §2!§.§1!n§;
   import §7M§.§+R§;
   import §7M§.§?!p§;
   
   public class §'i§
   {
      
      public static const §,!d§:Number = 50;
      
      public static var §;1§:Number = 0;
      
      public static const §;q§:Number = 0.5;
      
      public static const §9O§:Number = 0;
       
      
      public var §]! §:Number;
      
      public var §7!]§:Number;
      
      public var §^!t§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §+!X§:Number;
      
      public var §,!T§:§%I§;
      
      public function §'i§(param1:§%I§, param2:§+R§)
      {
         var _loc5_:§?!p§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§,!3§ = null;
         super();
         this.§,!T§ = param1;
         this.§]! § = int.MAX_VALUE;
         this.§7!]§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§^"%§)
         {
            _loc5_ = param2.§+!V§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §%I§.§ v§ * 4 * §%I§.§9"4§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§]! §)
            {
               this.§]! § = _loc7_;
            }
            if(_loc8_ > this.§7!]§)
            {
               this.§7!]§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§3J§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§]! §)
            {
               this.§]! § = _loc9_.x;
            }
            if(_loc9_.x > this.§7!]§)
            {
               this.§7!]§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §%I§.§ v§ * §%I§.§9"4§;
         this.§]! § -= _loc4_;
         this.§7!]§ += _loc4_;
         this.§+!X§ = §%I§.§ v§ * §%I§.§9"4§ / (this.§7!]§ - this.§]! §);
         this.§+!X§ = Math.max(this.§+!X§,§1!n§.§>!+§);
         this.mBorderGround_B2 = §9O§;
         this.§^!t§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §0_§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§^!t§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§]! § || param1 > this.§7!]§)
         {
            return true;
         }
         return false;
      }
   }
}
