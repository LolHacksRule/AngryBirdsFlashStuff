package §2!G§
{
   import § !b§.§'!%§;
   import §3U§.§ !M§;
   import §3U§.§2!]§;
   import §@!C§.§#C§;
   
   public class §1E§
   {
      
      public static const §<!6§:Number = 50;
      
      public static var §[!L§:Number = 0;
      
      public static const §4!G§:Number = 0.5;
      
      public static const §,&§:Number = 0;
       
      
      public var §<$§:Number;
      
      public var § !@§:Number;
      
      public var §7c§:Number;
      
      public var §6![§:Number;
      
      public var §2!2§:Number;
      
      public var mLevelMain:§2!V§;
      
      public function §1E§(param1:§2!V§, param2:§ !M§)
      {
         var _loc5_:§2!]§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§'!%§ = null;
         super();
         this.mLevelMain = param1;
         this.§<$§ = int.MAX_VALUE;
         this.§ !@§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§^M§)
         {
            _loc5_ = param2.§<k§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §2!V§.§-!>§ * 4 * §2!V§.§-!3§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§<$§)
            {
               this.§<$§ = _loc7_;
            }
            if(_loc8_ > this.§ !@§)
            {
               this.§ !@§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§;!G§)
         {
            if((_loc9_ = param2.§]A§(_loc3_)).x < this.§<$§)
            {
               this.§<$§ = _loc9_.x;
            }
            if(_loc9_.x > this.§ !@§)
            {
               this.§ !@§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §2!V§.§-!>§ * §2!V§.§-!3§;
         this.§<$§ -= _loc4_;
         this.§ !@§ += _loc4_;
         this.§2!2§ = §2!V§.§-!>§ * §2!V§.§-!3§ / (this.§ !@§ - this.§<$§);
         this.§2!2§ = Math.max(this.§2!2§,§#C§.§ !`§);
         this.§6![§ = §,&§;
         this.§7c§ = this.§6![§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §]^§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§7c§ || param2 > this.§6![§ + 50 || param1 < this.§<$§ || param1 > this.§ !@§)
         {
            return true;
         }
         return false;
      }
   }
}
