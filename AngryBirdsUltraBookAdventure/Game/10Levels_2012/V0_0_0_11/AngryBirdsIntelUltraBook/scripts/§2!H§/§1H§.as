package §2!H§
{
   import §"L§.§;c§;
   import §"L§.LevelModel;
   import §&V§.§+H§;
   import §<!j§.§%!-§;
   
   public class §1H§
   {
      
      public static const §;!`§:Number = 50;
      
      public static var §!Z§:Number = 0;
      
      public static const §>;§:Number = 0.5;
      
      public static const §!!%§:Number = 0;
       
      
      public var §4!>§:Number;
      
      public var §5;§:Number;
      
      public var §>C§:Number;
      
      public var § !c§:Number;
      
      public var §'S§:Number;
      
      public var §"!>§:LevelMain;
      
      public function §1H§(param1:LevelMain, param2:LevelModel)
      {
         var _loc5_:§;c§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§+H§ = null;
         super();
         this.§"!>§ = param1;
         this.§4!>§ = int.MAX_VALUE;
         this.§5;§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§8L§)
         {
            _loc5_ = param2.§]t§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = LevelMain.§6v§ * 4 * LevelMain.§8N§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§4!>§)
            {
               this.§4!>§ = _loc7_;
            }
            if(_loc8_ > this.§5;§)
            {
               this.§5;§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§2L§)
         {
            _loc9_ = param2.§`T§(_loc3_);
            if(_loc9_.x < this.§4!>§)
            {
               this.§4!>§ = _loc9_.x;
            }
            if(_loc9_.x > this.§5;§)
            {
               this.§5;§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * LevelMain.§6v§ * LevelMain.§8N§;
         this.§4!>§ -= _loc4_;
         this.§5;§ += _loc4_;
         this.§'S§ = LevelMain.§6v§ * LevelMain.§8N§ / (this.§5;§ - this.§4!>§);
         this.§'S§ = Math.max(this.§'S§,§%!-§.§[!+§);
         this.§ !c§ = §!!%§;
         this.§>C§ = this.§ !c§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §4!1§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§>C§ || param2 > this.§ !c§ + 50 || param1 < this.§4!>§ || param1 > this.§5;§)
         {
            return true;
         }
         return false;
      }
   }
}
