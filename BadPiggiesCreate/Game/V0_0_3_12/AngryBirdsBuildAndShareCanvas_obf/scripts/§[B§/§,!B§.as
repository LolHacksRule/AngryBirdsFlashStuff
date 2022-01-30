package §[B§
{
   import §0E§.§#O§;
   import §0E§.§9!Y§;
   import §?",§.§]!k§;
   import §@r§.§3!+§;
   
   public class §,!B§
   {
      
      public static const §"!b§:Number = 50;
      
      public static var §,!i§:Number = 0;
      
      public static const §3!k§:Number = 0.5;
      
      public static const §=3§:Number = 0;
       
      
      public var §'"6§:Number;
      
      public var §]J§:Number;
      
      public var §1!n§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §!![§:Number;
      
      public var §]!3§:§"d§;
      
      public function §,!B§(param1:§"d§, param2:§#O§)
      {
         var _loc5_:§9!Y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§]!k§ = null;
         super();
         this.§]!3§ = param1;
         this.§'"6§ = int.MAX_VALUE;
         this.§]J§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8G§)
         {
            _loc5_ = param2.§="2§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = §"d§.§]k§ * 4 * §"d§.§2!]§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§'"6§)
            {
               this.§'"6§ = _loc7_;
            }
            if(_loc8_ > this.§]J§)
            {
               this.§]J§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§@!l§)
         {
            if((_loc9_ = param2.getObject(_loc3_)).x < this.§'"6§)
            {
               this.§'"6§ = _loc9_.x;
            }
            if(_loc9_.x > this.§]J§)
            {
               this.§]J§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * §"d§.§]k§ * §"d§.§2!]§;
         this.§'"6§ -= _loc4_;
         this.§]J§ += _loc4_;
         this.§!![§ = §"d§.§]k§ * §"d§.§2!]§ / (this.§]J§ - this.§'"6§);
         this.§!![§ = Math.max(this.§!![§,§3!+§.§#!^§);
         this.mBorderGround_B2 = §=3§;
         this.§1!n§ = this.mBorderGround_B2 - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §2!T§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§1!n§ || param2 > this.mBorderGround_B2 + 50 || param1 < this.§'"6§ || param1 > this.§]J§)
         {
            return true;
         }
         return false;
      }
   }
}
