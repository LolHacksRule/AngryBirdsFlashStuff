package §%"§
{
   import §'D§.§3h§;
   import §3M§.§;v§;
   import §?!;§.§;!,§;
   import §?!;§.§>w§;
   
   public class §&h§
   {
      
      public static const §3J§:Number = 50;
      
      public static var §1J§:Number = 0;
      
      public static const §8m§:Number = 0.5;
      
      public static const §1!L§:Number = 0;
       
      
      public var §^N§:Number;
      
      public var §6!+§:Number;
      
      public var §6J§:Number;
      
      public var §=a§:Number;
      
      public var §>!D§:Number;
      
      public var §-H§:§ do§;
      
      public function §&h§(param1:§ do§, param2:§;!,§)
      {
         var _loc5_:§>w§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§;v§ = null;
         super();
         this.§-H§ = param1;
         this.§^N§ = int.MAX_VALUE;
         this.§6!+§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§3D§)
         {
            _loc5_ = param2.§,f§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = § do§.§39§ * 4 * § do§.§^!I§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§^N§)
            {
               this.§^N§ = _loc7_;
            }
            if(_loc8_ > this.§6!+§)
            {
               this.§6!+§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§>&§)
         {
            if((_loc9_ = param2.§99§(_loc3_)).x < this.§^N§)
            {
               this.§^N§ = _loc9_.x;
            }
            if(_loc9_.x > this.§6!+§)
            {
               this.§6!+§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * § do§.§39§ * § do§.§^!I§;
         this.§^N§ -= _loc4_;
         this.§6!+§ += _loc4_;
         this.§>!D§ = § do§.§39§ * § do§.§^!I§ / (this.§6!+§ - this.§^N§);
         this.§>!D§ = Math.max(this.§>!D§,§3h§.§56§);
         this.§=a§ = §1!L§;
         this.§6J§ = this.§=a§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function § o§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§6J§ || param2 > this.§=a§ + 50 || param1 < this.§^N§ || param1 > this.§6!+§)
         {
            return true;
         }
         return false;
      }
   }
}
