package §@!b§
{
   import §!!g§.§8d§;
   import §`!d§.§0%§;
   import §`!d§.§[!h§;
   import §for §.§-"§;
   
   public class §#!5§
   {
      
      public static const §1!n§:Number = 50;
      
      public static var §,!n§:Number = 0;
      
      public static const §set §:Number = 0.5;
      
      public static const §+1§:Number = 0;
       
      
      public var §+q§:Number;
      
      public var §6V§:Number;
      
      public var §>B§:Number;
      
      public var §4R§:Number;
      
      public var §4!g§:Number;
      
      public var mLevelMain:§@!k§;
      
      public function §#!5§(param1:§@!k§, param2:§0%§)
      {
         var _loc5_:§[!h§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§-"§ = null;
         super();
         this.mLevelMain = param1;
         this.§+q§ = int.MAX_VALUE;
         this.§6V§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§2!&§)
         {
            _loc5_ = param2.§!!,§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §@!k§.§ p§ * 4 * §@!k§.§2!J§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§+q§)
            {
               this.§+q§ = _loc7_;
            }
            if(_loc8_ > this.§6V§)
            {
               this.§6V§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§4!?§)
         {
            if((_loc9_ = param2.§'r§(_loc3_)).x < this.§+q§)
            {
               this.§+q§ = _loc9_.x;
            }
            if(_loc9_.x > this.§6V§)
            {
               this.§6V§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §@!k§.§ p§ * §@!k§.§2!J§;
         this.§+q§ -= _loc4_;
         this.§6V§ += _loc4_;
         this.§4!g§ = §@!k§.§ p§ * §@!k§.§2!J§ / (this.§6V§ - this.§+q§);
         this.§4!g§ = Math.max(this.§4!g§,§8d§.§]!X§);
         this.§4R§ = §+1§;
         this.§>B§ = this.§4R§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §>U§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§>B§ || param2 > this.§4R§ + 50 || param1 < this.§+q§ || param1 > this.§6V§)
         {
            return true;
         }
         return false;
      }
   }
}
