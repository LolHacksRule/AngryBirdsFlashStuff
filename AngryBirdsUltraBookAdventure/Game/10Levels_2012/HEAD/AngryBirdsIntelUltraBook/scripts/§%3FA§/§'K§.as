package §?A§
{
   import §#!X§.§7!1§;
   import §#!X§.LevelModel;
   import §#y§.§0!D§;
   import §6Z§.§^!g§;
   
   public class §'K§
   {
      
      public static const §^K§:Number = 50;
      
      public static var §,W§:Number = 0;
      
      public static const §!S§:Number = 0.5;
      
      public static const §;;§:Number = 0;
       
      
      public var §6!3§:Number;
      
      public var §%Q§:Number;
      
      public var §2!<§:Number;
      
      public var §7!5§:Number;
      
      public var §=!$§:Number;
      
      public var §6f§:LevelMain;
      
      public function §'K§(param1:LevelMain, param2:LevelModel)
      {
         var _loc5_:§7!1§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:§^!g§ = null;
         super();
         this.§6f§ = param1;
         this.§6!3§ = int.MAX_VALUE;
         this.§%Q§ = int.MIN_VALUE;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.§^p§)
         {
            _loc5_ = param2.§4h§(_loc3_);
            _loc6_ = 0;
            if(_loc5_.left.toString() != "NaN")
            {
               _loc6_ = (_loc5_.right - _loc5_.left) * 4;
            }
            else
            {
               _loc6_ = LevelMain.§>7§ * 4 * LevelMain.§!5§;
            }
            _loc7_ = _loc5_.x - _loc6_ / 2;
            _loc8_ = _loc5_.x + _loc6_ / 2;
            if(_loc7_ < this.§6!3§)
            {
               this.§6!3§ = _loc7_;
            }
            if(_loc8_ > this.§%Q§)
            {
               this.§%Q§ = _loc8_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param2.§;!V§)
         {
            _loc9_ = param2.§[O§(_loc3_);
            if(_loc9_.x < this.§6!3§)
            {
               this.§6!3§ = _loc9_.x;
            }
            if(_loc9_.x > this.§%Q§)
            {
               this.§%Q§ = _loc9_.x;
            }
            _loc3_++;
         }
         var _loc4_:Number = 0.1 * LevelMain.§>7§ * LevelMain.§!5§;
         this.§6!3§ -= _loc4_;
         this.§%Q§ += _loc4_;
         this.§=!$§ = LevelMain.§>7§ * LevelMain.§!5§ / (this.§%Q§ - this.§6!3§);
         this.§=!$§ = Math.max(this.§=!$§,§0!D§.§1!F§);
         this.§7!5§ = §;;§;
         this.§2!<§ = this.§7!5§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §0t§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§2!<§ || param2 > this.§7!5§ + 50 || param1 < this.§6!3§ || param1 > this.§%Q§)
         {
            return true;
         }
         return false;
      }
   }
}
