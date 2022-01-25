package §4A§
{
   import §1q§.§2W§;
   import §86§.§9]§;
   import §86§.§<!X§;
   import §`!C§.§8!9§;
   
   public class §0![§
   {
      
      public static const §]M§:Number = 50;
      
      public static var §@!8§:Number = 0;
      
      public static const §4@§:Number = 0.5;
      
      public static const §+§:Number = 0;
       
      
      public var §2!2§:Number;
      
      public var §]G§:Number;
      
      public var §'l§:Number;
      
      public var §>R§:Number;
      
      public var §'!4§:Number;
      
      public var mLevelMain:§&_§;
      
      public function §0![§(param1:§&_§, param2:§9]§)
      {
         var _loc5_:§<!X§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§8!9§ = null;
         super();
         this.mLevelMain = param1;
         this.§2!2§ = int.MAX_VALUE;
         this.§]G§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§+a§)
         {
            _loc5_ = param2.§[!!§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §&_§.§ !>§ * 4 * §&_§.§5-§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§2!2§)
            {
               this.§2!2§ = _loc7_;
            }
            if(_loc8_ > this.§]G§)
            {
               this.§]G§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§;r§)
         {
            if((_loc9_ = param2.§&!+§(_loc3_)).x < this.§2!2§)
            {
               this.§2!2§ = _loc9_.x;
            }
            if(_loc9_.x > this.§]G§)
            {
               this.§]G§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §&_§.§ !>§ * §&_§.§5-§;
         this.§2!2§ -= _loc4_;
         this.§]G§ += _loc4_;
         this.§'!4§ = §&_§.§ !>§ * §&_§.§5-§ / (this.§]G§ - this.§2!2§);
         this.§'!4§ = Math.max(this.§'!4§,§2W§.§=I§);
         this.§>R§ = §+§;
         this.§'l§ = this.§>R§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §+M§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§'l§ || param2 > this.§>R§ + 50 || param1 < this.§2!2§ || param1 > this.§]G§)
         {
            return true;
         }
         return false;
      }
   }
}
