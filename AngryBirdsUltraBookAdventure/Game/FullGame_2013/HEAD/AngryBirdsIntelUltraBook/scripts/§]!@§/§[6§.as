package §]!@§
{
   import §4!C§.§,!0§;
   import §5u§.§[!,§;
   import §>!_§.§5!"§;
   import §>!_§.LevelModel;
   
   public class §[6§
   {
      
      public static const § case§:Number = 50;
      
      public static var §^!W§:Number = 0;
      
      public static const §;!d§:Number = 0.5;
      
      public static const §]!,§:Number = 0;
       
      
      public var §9!1§:Number;
      
      public var §6]§:Number;
      
      public var §2?§:Number;
      
      public var §-!J§:Number;
      
      public var §75§:Number;
      
      public var §`s§:LevelMain;
      
      public function §[6§(param1:LevelMain, param2:LevelModel)
      {
         var _loc5_:§5!"§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§,!0§ = null;
         super();
         this.§`s§ = param1;
         this.§9!1§ = int.MAX_VALUE;
         this.§6]§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.override)
         {
            _loc5_ = param2.§%O§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = LevelMain.§;y§ * 4 * LevelMain.§@!d§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§9!1§)
            {
               this.§9!1§ = _loc7_;
            }
            if(_loc8_ > this.§6]§)
            {
               this.§6]§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§"&§)
         {
            _loc9_ = param2.§98§(_loc3_);
            if(_loc9_.x < this.§9!1§)
            {
               this.§9!1§ = _loc9_.x;
            }
            if(_loc9_.x > this.§6]§)
            {
               this.§6]§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * LevelMain.§;y§ * LevelMain.§@!d§;
         this.§9!1§ -= _loc4_;
         this.§6]§ += _loc4_;
         this.§75§ = LevelMain.§;y§ * LevelMain.§@!d§ / (this.§6]§ - this.§9!1§);
         this.§75§ = Math.max(this.§75§,§[!,§.§if§);
         this.§-!J§ = §]!,§;
         this.§2?§ = this.§-!J§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §>p§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§2?§ || param2 > this.§-!J§ + 50 || param1 < this.§9!1§ || param1 > this.§6]§)
         {
            return true;
         }
         return false;
      }
   }
}
